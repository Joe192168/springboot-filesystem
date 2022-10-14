package com.geominfo.activiti.mapper;

import com.geominfo.activiti.domain.vo.ActReDeploymentVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface ActReDeploymentMapper {

        public List<ActReDeploymentVO> selectActReDeploymentByIds(@Param("ids") Set<String> ids);

}
