package com.geominfo.activiti.domain.vo;

import java.util.Date;

public class ActReDeploymentVO {

    private String id;
    private Date deployTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDeployTime() {
        return deployTime;
    }

    public void setDeployTime(Date deployTime) {
        this.deployTime = deployTime;
    }
}
