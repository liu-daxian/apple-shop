package com.qianfeng.ls.code;

public class ResponseResult {

    private String resultCode = "00000";//默认成功
    private String resultMsg; //错误信息给前台去展示

    public String getResultCode() {
        return resultCode;
    }

    public void setResultCode(String resultCode) {
        this.resultCode = resultCode;
    }

    public String getResultMsg() {
        return resultMsg;
    }

    public void setResultMsg(String resultMsg) {
        this.resultMsg = resultMsg;
    }
}
