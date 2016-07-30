package vo;

import model.Supplier;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DengrongGuan on 2016/7/30.
 */
public class Suppliers {
    private int count;
    private List<Supplier> list = new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<Supplier> getList() {
        return list;
    }

    public void setList(List<Supplier> supplierList) {
        this.list = supplierList;
    }
}
