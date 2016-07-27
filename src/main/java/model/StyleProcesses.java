package model;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
@Entity(name = "style_processes")
public class StyleProcesses {
    private int styleId;
    private String processId;

    @Column(name = "style_id",nullable = false)
    public int getStyleId() {
        return styleId;
    }
    public void setStyleId(int styleId) {
        this.styleId = styleId;
    }

    @Column(name = "process_id",nullable = false)
    public String getProcessId() {
        return processId;
    }

    public void setProcessId(String processId) {
        this.processId = processId;
    }
}
