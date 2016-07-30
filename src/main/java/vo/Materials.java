package vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public class Materials {
    private int count;
    private List<MaterialItem> list = new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<MaterialItem> getList() {
        return list;
    }

    public void setList(List<MaterialItem> list) {
        this.list = list;
    }
}
