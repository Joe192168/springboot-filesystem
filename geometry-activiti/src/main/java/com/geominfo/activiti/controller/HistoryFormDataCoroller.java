package com.geominfo.activiti.controller;

import com.geominfo.activiti.service.IFormHistoryDataService;
import com.geominfo.common.core.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HistoryFormDataCoroller {
    @Autowired
    private IFormHistoryDataService formHistoryDataService;

    @GetMapping(value = "historyFromData/ByInstanceId/{instanceId}")
    public AjaxResult historyFromData(@PathVariable("instanceId") String instanceId) {
        return AjaxResult.success(formHistoryDataService.historyDataShow(instanceId));
    }
}
