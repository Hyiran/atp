//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.atp.common;

import java.io.Serializable;

public class Result<T> implements Serializable {
    private static final long serialVersionUID = 1L;
    public static final String SUCCESS_CODE = "0000";
    public static final String SUCCESS_MSG = "成功";
    private String statusCode;
    private String errMsg;
    private T model;

    private Result() {
    }

    private Result(String statusCode, String msg, T model) {
        this.statusCode = statusCode;
        this.model = model;
        this.errMsg = msg;
    }

    public static <T> Result<T> succeed(T object) {
        return new Result("0000", "成功", object);
    }

    public static <T> Result<T> fail(String errCode, String errMsg, T object) {
        return new Result(errCode, errMsg, object);
    }

    public boolean isSuccess() {
        return "0000".equals(this.statusCode);
    }

    public boolean isSuccessful() {
        return this.isSuccess() && this.model != null;
    }

    public String getErrMsg() {
        return this.errMsg;
    }

    public String getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }

    public T getModel() {
        return this.model;
    }

    public void setModel(T model) {
        this.model = model;
    }

    public String toString() {
        return String.format("Result [statusCode=%s, errMsg=%s, object=%s]", new Object[]{this.statusCode, this.errMsg, this.model});
    }
}
