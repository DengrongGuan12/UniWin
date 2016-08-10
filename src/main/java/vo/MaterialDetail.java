package vo;

import model.Material;

/**
 * Created by dengrong on 2016/7/31.
 */
public class MaterialDetail extends Material {
    private String supplier;

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }
}
