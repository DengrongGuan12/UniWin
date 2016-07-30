package vo;


import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public class StockDispatchs {
    private int count;
    private List<StockDispatchItem> list=new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<StockDispatchItem> getList() {
        return list;
    }

    public void setList(List<StockDispatchItem> list) {
        this.list = list;
    }
}
