package vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dengrong on 2016/7/30.
 */
public class Materials {
    private int count;
    private List<MaterialItem> materialItems = new ArrayList<>();

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<MaterialItem> getMaterialItems() {
        return materialItems;
    }

    public void setMaterialItems(List<MaterialItem> materialItems) {
        this.materialItems = materialItems;
    }
}
