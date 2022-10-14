package com.geominfo.activiti.service;

import com.geominfo.activiti.domain.dto.ActivitiHighLineDTO;

public interface IActivitiHistoryService {

    public ActivitiHighLineDTO gethighLine(String instanceId);
}
