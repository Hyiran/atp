package com.atp.common;

public enum ErrorEnum
{
    /**********错误码请按序递增，为避免重复，自己的模块另选起点，如2000,3000**********/
    ERR_CHARGE_SUCCESS("1000","存入预约成功！"),
    ERR_CHARGE_FAILURE("1001","存入预约失败！"),
    ERR_CHARGE_AMOUNT("1002","预约金额非法！"),
    ERR_PARAM_IS_NULL("1003","参数有误！"),
    ERR_TAKEOUT_SUCCESS("1004","提现成功！"),
    ERR_TAKEOUT_FAILURE("1005","提现失败！"),
    ERR_ORDER_SUCCESS("1006","对账下单成功！"),
    ERR_ORDER_FAILURE("1007","对账下单失败！"),
    ERR_CANT_NOT_ORDER("1008","当前用户无法下单！"),
    ERR_OPER_ERROR("1009","操作失败，用户信息有误！"),
    ERR_ORDER_EXCEPTION("1010","操作失败，请重新尝试！"),
    ERR_QUERY_DEPOT("1011","持仓信息查询失败，系统异常！"),
    ERR_YIELD_7DAY_EXP("1012","基金行情查询失败，系统异常！"),
    ERR_TRDPWD_ERROR("1013","预约失败，交易密码不正确！"),
    ERR_QUERY_FUND_ERROR("1014","基金基本信息查询失败，系统异常！"),
    ERR_PURCHASE_FUND_SUCCESS("1015","基金申购预约成功！"),
    ERR_PURCHASE_FUND_FAILURE("1016","基金申购预约失败！"),
    ERR_REDEEM_FUND_SUCCESS("1017","基金赎回成功！"),
    ERR_REDEEM_FUND_FAILURE("1018","基金赎回失败！"),
    ERR_NO_RISK("1019","无此风险测评等级"),
    ERR_RISK_TESTING_SUCCESS("1020","风险测评成功"),
    ERR_RISK_TESTING_FAILURE("1021","风险测评失败"),
    ERR_NOT_OPEN_ACCOUNT("1022","开户正在审核，暂时不能下单！"),
    ERR_DEL_DATA("1023","数据删除失败"),
    ERR_BANK_DATA("1024","银行信息错误"),
    ERR_CITY_NOT_EXISTS("1025","省市信息不存在"),
    ERR_BANK_NOT_EXISTS("1026","支行信息不存在"),
    
    /**********错误码请按序递增，2开头**********/
    ERR_USER_REG_SUCCESS("2000","注册成功！"),
    ERR_USER_REG_FAILURE("2001","注册失败！"),
    ERR_UPDATE_USER_SUCCESS("2003","更新用户成功！"),
    ERR_UPDATE_USER_FAILURE("2004","更新用户失败！"),
    ERR_COMANY_REG_SUCCESS("2005","完善企业信息成功！"),
    ERR_COMANY_REG_FAILURE("2006","完善企业信息失败！"),
    ERR_AUTH_CODE("2007","验证码输入不正确，请重新输入"),
    ERR_MOBILE_EXIST("2008","该手机号已注册"),
    ERR_LOGIN_SUCCESS("2009","登陆成功！"),
    ERR_LOGIN_FAILURE("2010","手机号或密码错误！"),
    ERR_FUNDINFO_FAILURE("2011","行情查询失败！"),
    ERR_AUTHCODE_FAILURE("2012","验证码错误！"),
    ERR_NO_COMPANY_FAILURE("2013","未完善企业信息！"),
    ERR_MOBILE_NOT_EXIST("2014","手机号未注册！"),
    ERR_PWS_NO_CORRECT("2015","密码不正确！"),
    ERR_CERTIFICATE_SUCCESS("2016","新增证件信息成功！"),
    ERR_CERTIFICATE_FAILURE("2017","新增证件信息失败！"),
    ERR_UPLOAD_SUCCESS("2018","上传证件成功！"),
    ERR_UPLOAD_FAILURE("2019","系统错误！"),
    ERR_NO_BANK_FAILURE("2020","查询银行列表失败！"),
    ERR_BANK_SUCCESS("2021","查询银行列表成功！"),
    ERR_NO_BRANC_BANK_FAILURE("2022","查询分支行列表失败！"),
    ERR_BRANC_BANK_SUCCESS("2023","查询分支行列表成功！"),
    ERR_PROV_SUCCESS("2024","查询银行列表成功！"),
    ERR_PROV_FAILURE("2025","查询银行列表成功！"),
    ERR_NO_AUTHCODE("2026","请输入验证码"),
    ERR_MOBILE_AUTHCODE("2027","手机验证码有误，请重新输入"),
    ERR_COMPANY_EXIST("2028","该企业已注册"),
    ERR_BIND_CARD_SUCCESS("2029","绑卡成功！"),
    ERR_BIND_CARD_FAILURE("2030","绑卡失败！"),
    ERR_SEND_MSG_FAILURE("2031","短信发送失败！"),
    ERR_HOLD_SUCCESS("2032","查询持仓信息成功！"),
    ERR_HOLD_FAILURE("2033","验证码校验成功！"),
    ERR_SEND_MSG_SUCCESS("2034","短信发送成功！"),
    ERR_FAST_REDEEM_SUCCESS("2035","快赎开关启动成功！"),
    ERR_UNBIND_CARD("2036","未绑卡！"),
    
    /**********错误码请按序递增，3开头**********/
    ERR_USER_ADD_SUCCESS("3000","添加用户成功！"),
    ERR_USER_ADD_FAILURE("3001","添加用户失败！"),
    ERR_USER_QUERY_FAILURE("3002","查询用户失败！"),
    ERR_USER_QUERY_SUCCESS("3003","查询用户成功！"),
    ERR_USER_MODIFY_SUCCESS("3004","更新用户成功！"),
    ERR_USER_MODIFY_FAILURE("3005","更新失败，手机号【{0}】已经存在！"),
    ERR_USER_DELETE_SUCCESS("3006","删除用户成功！"),
    ERR_USER_DELETE_FAILURE("3007","删除用户失败！"),
    ERR_AUTH_ADD_SUCCESS("3008","添加账户成功！"),
    ERR_AUTH_ADD_FAILURE("3009","添加账户失败！"),
    ERR_ADMIN_AUTH_SUCCESS("3011","账户参数不正确！"),
    ERR_AUTH_DELE_SUCCESS("3012","删除账户成功！"),
    ERR_AUTH_DELE_FAILURE("3013","删除账户失败！"),
    ERR_USER_UPDATE_FAILURE("3014","更新失败！"),
    ERR_USER_UPDATE_SUCCESS("3015","更新成功！"),
    ERR_USER_SUCCESS("3016","用戶存在！"),
    ERR_USER_FAILURE("3017","用戶不存在！"),
    ERR_ORIGNPWD_FAILURE("3018","输入原密码错误！"), 
    ERR_UPDATE_PWD_FAILURE("3019","更新密码失败！"),
    ERR_UPDATE_PWD_SUCCESS("3020","更新密码成功！"),
    ERR_TRADE_PWD_NULL("3021","交易密码为空！"),
    ERR_RESET_PWD_SUCCESS("3022","重置密码成功！"),
    ERR_RESET_PWD_FAILURE("3023","重置密码失败！"),
    ERR_NO_USER_RECORD("3024","无用户记录"),
    ERR_PWD_MAX("3025","当日输入密码次数已超5次"),
    ERR_ADMIN_ADD_SUCCESS("3026","添加管理员成功！"),
    ERR_ADMIN_ADD_FAILURE("3027","添加管理员失败！"),
    ERR_ADMIN_DELETE_SUCCESS("3028","删除管理员成功！"),
    ERR_ADMIN_DELETE_FAILURE("3029","删除管理员失败！"),
    ERR_TRADEPWD_FAILURE("3030","输入交易密码错误！"),
    ERR_ADMIN_EXISTS("3031","该管理员账户已经存在！"),
    ERR_NOT_ADMIN_USER("3032","当前用户不是管理员"),
    ERR_USER_NOT_LOG("3033","系统超时，请重新登录"),
    ERR_NO_PERMISSION("3034", "无权限进行此操作"),
    ERR_USER_ROLE_EXISTS("3035","新增失败：手机号{0}已拥有{1}角色！"),
    ERR_USER_IS_ADMIN("3035","新增失败：手机号{0}已在其他公司注册！"),
    ERR_CERTNO_NOT_CORRECT("3036","新增失败：身份证号不合法！"),
    ERR_TIME_NOT_ALLOW_FAST_REDEEM("3037","当前时间不允许快速取现"),
    ERR_QUERY_FAIL("3038","查询失败"),
    ERR_QUERY_NO_RECORD("3039","查询无记录"),
    ERR_QUERY_ASSET_SUCCESS("3040","查询资管产品成功"),
    ERR_COMPANY_NOT_OPEN("3041","企业未开户"),
    ERR_QUERY_NO_COMPANY("3042","企业信息不存在"),
    ERR_COMPANY_NOT_RISK("3043","企业未进行风险测评"),
    ERR_QUERY_NO_COMPANY_ACCOUNT("3044","企业账户信息不存在"),
    ERR_USER_ALREADY_BIN_CARD("3045","用户已绑卡"),
    
    ERR_FAST_REDEEM_FAILURE1("0","快赎限额验证失败！"),
    ERR_FAST_REDEEM_SUCCESS1("1","快赎限额验证成功！"),
    ERR_OVER_SINGLE_MAX("2","基金赎回失败！"),
    ERR_OVER_DAY_MAX("3","基金赎回失败！"),

    ERR_DISABLE_FAILUER("4001","禁用失败！"),
    ERR_ADDCONFIG_FAILUER("4002","新增失败"),
    ERR_ADDCONFIG_REPEAT("4003","配置已存在")





    ;
    private ErrorEnum(String code,String desc)
    {
        this.code = code;
        this.desc = desc;
    }
    private String code;
    private String desc;

    public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
}