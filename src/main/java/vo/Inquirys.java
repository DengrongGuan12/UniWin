package vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/31.
 */
public class Inquirys {
    private int count;
    private List<InquiryItem> list = new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<InquiryItem> getList() {
        return list;
    }

    public void setList(List<InquiryItem> list) {
        this.list = list;
    }
}
