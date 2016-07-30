package util;

import java.util.List;

/**
 * Created by dengrong on 2016/7/29.
 */
public class ListUtil {
    public static List slice(List list,int page,int num){
        int fromIndex = (page-1)*num;
        int toIndex = page*num;
        int size = list.size();
        if(fromIndex > size-1){
            list.clear();
            return list;
        }
        toIndex = Math.min(toIndex,size);
        return list.subList(fromIndex,toIndex);
    }
}
