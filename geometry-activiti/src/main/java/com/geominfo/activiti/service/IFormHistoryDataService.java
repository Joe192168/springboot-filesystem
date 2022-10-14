package com.geominfo.activiti.service;

import com.geominfo.activiti.domain.dto.HistoryDataDTO;

import java.util.List;

public interface IFormHistoryDataService {

    public List<HistoryDataDTO> historyDataShow(String instanceId);
}
