package com.geominfo.quartz.controller;

import java.util.List;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.geominfo.common.core.controller.BaseController;
import com.geominfo.common.core.domain.AjaxResult;
import com.geominfo.common.core.page.TableDataInfo;
import com.geominfo.common.exception.job.TaskException;
import com.geominfo.common.utils.SecurityUtils;
import com.geominfo.common.utils.poi.ExcelUtil;
import com.geominfo.quartz.domain.SysJob;
import com.geominfo.quartz.service.ISysJobService;
import com.geominfo.quartz.util.CronUtils;

/**
 * 调度任务信息操作处理
 * 
 * @author xqh
 */
@RestController
@RequestMapping("/monitor/job")
public class SysJobController extends BaseController
{
    @Autowired
    private ISysJobService jobService;

    /**
     * 查询定时任务列表
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysJob sysJob)
    {
        startPage();
        List<SysJob> list = jobService.selectJobList(sysJob);
        return getDataTable(list);
    }

    /**
     * 导出定时任务列表
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:export')")
    @GetMapping("/export")
    public AjaxResult export(SysJob sysJob)
    {
        List<SysJob> list = jobService.selectJobList(sysJob);
        ExcelUtil<SysJob> util = new ExcelUtil<SysJob>(SysJob.class);
        return util.exportExcel(list, "定时任务");
    }

    /**
     * 获取定时任务详细信息
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:query')")
    @GetMapping(value = "/{jobId}")
    public AjaxResult getInfo(@PathVariable("jobId") Long jobId)
    {
        return AjaxResult.success(jobService.selectJobById(jobId));
    }

    /**
     * 新增定时任务
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:add')")
    @PostMapping
    public AjaxResult add(@RequestBody SysJob sysJob) throws SchedulerException, TaskException
    {
        if (!CronUtils.isValid(sysJob.getCronExpression()))
        {
            return AjaxResult.error("cron表达式不正确");
        }
        sysJob.setCreateBy(SecurityUtils.getUsername());
        return toAjax(jobService.insertJob(sysJob));
    }

    /**
     * 修改定时任务
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:edit')")
    @PutMapping
    public AjaxResult edit(@RequestBody SysJob sysJob) throws SchedulerException, TaskException
    {
        if (!CronUtils.isValid(sysJob.getCronExpression()))
        {
            return AjaxResult.error("cron表达式不正确");
        }
        sysJob.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(jobService.updateJob(sysJob));
    }

    /**
     * 定时任务状态修改
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:changeStatus')")
    @PutMapping("/changeStatus")
    public AjaxResult changeStatus(@RequestBody SysJob job) throws SchedulerException
    {
        SysJob newJob = jobService.selectJobById(job.getJobId());
        newJob.setStatus(job.getStatus());
        return toAjax(jobService.changeStatus(newJob));
    }

    /**
     * 定时任务立即执行一次
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:changeStatus')")
    @PutMapping("/run")
    public AjaxResult run(@RequestBody SysJob job) throws SchedulerException
    {
        jobService.run(job);
        return AjaxResult.success();
    }

    /**
     * 删除定时任务
     */
    @PreAuthorize("@ss.hasPermi('monitor:job:remove')")
    @DeleteMapping("/{jobIds}")
    public AjaxResult remove(@PathVariable Long[] jobIds) throws SchedulerException, TaskException
    {
        jobService.deleteJobByIds(jobIds);
        return AjaxResult.success();
    }
}
