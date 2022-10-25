package com.geominfo.common.exception.user;

/**
 * 验证码失效异常类
 *
 * @author xqh
 */
public class VerificationCodeExpireException extends UserException {
    private static final long serialVersionUID = 1L;

    public VerificationCodeExpireException() {
        super("user.jcaptcha.expire", null);
    }
}
