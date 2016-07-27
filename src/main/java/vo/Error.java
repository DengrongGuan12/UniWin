package vo;

/**
 * Created by I322233 on 6/23/2016.
 */
public class Error {
    public static final String FORBIDDEN = "403";
    public static final String NOT_AUTH = "401";
    public static final String BAD_PARAM = "402";
    private String code;
    public Error(String code,String message){
        this.code= code;
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    private String message;

}
