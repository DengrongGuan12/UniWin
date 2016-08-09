package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by DengrongGuan on 2016/8/8.
 */
@Entity(name = "style_materials")
public class StyleMaterials implements Serializable{
    private int styleId;
    private int materialId;
    private double useAmount;//需求量

    @Id
    @Column(name = "style_id")
    public int getStyleId() {
        return styleId;
    }

    public void setStyleId(int styleId) {
        this.styleId = styleId;
    }

    @Id
    @Column(name = "material_id")
    public int getMaterialId() {
        return materialId;
    }

    public void setMaterialId(int materialId) {
        this.materialId = materialId;
    }

    @Column(name = "use_amount")
    public double getUseAmount() {
        return useAmount;
    }

    public void setUseAmount(double useAmount) {
        this.useAmount = useAmount;
    }
}
