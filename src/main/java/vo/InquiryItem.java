package vo;

import model.Inquiry;
import model.InquiryState;

/**
 * Created by dengrong on 2016/7/31.
 */
public class InquiryItem extends Inquiry{
    private String createTimeStr;
    private String checkTimeStr;

    public String getCheckTimeStr() {
        return checkTimeStr;
    }

    public void setCheckTimeStr(String checkTimeStr) {
        this.checkTimeStr = checkTimeStr;
    }

    public String getCreateTimeStr() {
        return createTimeStr;
    }

    public void setCreateTimeStr(String createTimeStr) {
        this.createTimeStr = createTimeStr;
    }
}
