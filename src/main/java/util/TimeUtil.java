package util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * Created by dengrong on 2016/7/30.
 */
public class TimeUtil {
    public static String toString(Timestamp timestamp){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(timestamp);
    }
}
