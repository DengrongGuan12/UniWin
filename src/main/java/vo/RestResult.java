package vo;

import javax.persistence.Entity;

/**
 * Created by I322233 on 6/23/2016.
 */
@Entity
public class RestResult {
    private int result;
    private Object data;
    private Error error;

    public Error getError(){
        return error;
    }
    public int getResult(){
        return result;
    }
    public Object getData(){
        return data;
    }
    public RestResult(int result, Object data){
        this.result = result;
        if(result == 1){
            this.data = data;
        }else{
            this.error = (Error) data;
        }
    }
    public static RestResult CreateResult(int result, Object data){
        return new RestResult(result,data);
    }
}
