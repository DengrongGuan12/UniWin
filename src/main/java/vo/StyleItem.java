package vo;

import model.Style;

/**
 * Created by DengrongGuan on 2016/7/27.
 */
public class StyleItem extends Style{
    protected boolean pass;
    protected String createTimeStr;

    public String getCreateTimeStr() {
        return createTimeStr;
    }

    public void setCreateTimeStr(String createTime) {
        this.createTimeStr = createTime;
    }

    public boolean isPass() {
        return pass;
    }

    public void setPass(boolean pass) {
        this.pass = pass;
    }


}
