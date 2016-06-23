package vo;

/**
 * Created by I322233 on 6/23/2016.
 */
public class Error {
    public static final String FORBIDDEN = "403";
    public static final String NOT_AUTH = "401";
    private String code;

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
