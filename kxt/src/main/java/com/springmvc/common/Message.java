package com.springmvc.common;

public class Message {

    private boolean success;

    private String error;

    private String hint;

    public static Message createErr(String error,String hint){
        return new Message(false,error,hint);
    }

    public static Message createSuc(String hint){
        return new Message(true,null,hint);
    }

    public Message(boolean success, String error, String hint) {
        this.success = success;
        this.error = error;
        this.hint = hint;
    }

    public String getError() {
        return error;
    }

    public String getHint() {
        return hint;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public boolean isSuccess() {

        return success;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setHint(String hint) {
        this.hint = hint;
    }
}
