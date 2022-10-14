package com.geominfo.common.exception.user;

/**
 * 验证码错误异常类
 * 
 * @author xqh
 */
public class VerificationCodeException extends UserException
{
    private static final long serialVersionUID = 1L;

    public VerificationCodeException()
    {
        super("user.jcaptcha.error", null);
    }
}
