package vo;

import model.Supplier;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
public class Suppliers {
    private int count;
    private List<Supplier> supplierList = new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<Supplier> getSupplierList() {
        return supplierList;
    }

    public void setSupplierList(List<Supplier> supplierList) {
        this.supplierList = supplierList;
    }
}
