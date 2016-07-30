package vo;


import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public class StockDispatchs {
    private int count;
    private List<StockDispatchItem> stockDispatchList=new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<StockDispatchItem> getStockDispatchList() {
        return stockDispatchList;
    }

    public void setStockDispatchList(List<StockDispatchItem> stockDispatchList) {
        this.stockDispatchList = stockDispatchList;
    }
}
