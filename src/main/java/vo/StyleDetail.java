package vo;

import java.util.List;

/**
 * Created by dengrong on 2016/7/28.
 */
public class StyleDetail extends StyleItem {
    private List<Process> orderList;

    public List<Process> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Process> orderList) {
        this.orderList = orderList;
    }
}
