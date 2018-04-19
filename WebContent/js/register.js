/*function $(elementId) {
    return document.getElementById(elementId).value;
}

function divId(elementId) {
    return document.getElementById(elementId);
}*/

/*手机号验证*/
function checkMobile() {
    var mobile = document.getElementById("mobile").value;
    var mobileId =document.getElementById("mobile_prompt");
    var regMobile = /^1\d{10}$/;
    if (regMobile.test(mobile) == false) {
        mobileId.innerHTML = "请填写有效手机号";
        return false;
    }
    mobileId.innerHTML = "";
    return true;
}

/*验证码验证*/
function checkCode() {
    var code = document.getElementById("code").value;
    var codeId = document.getElementById("code_prompt");
    var regCode = /^\d{6}$/;
    if (regCode.test(code) == false) {
        codeId.innerHTML = "验证码为6位数字";
        return false;
    }
    codeId.innerHTML = "";
    return true;
}

/*备用手机号验证*/
function checkMobilebak() {
    var telbak = document.getElementById("telbak").value;
    var telbakId =document.getElementById("telbak_prompt");
    var regMobilebak = /^1\d{10}$/;
    if (regMobilebak.test(telbak) == false) {
        telbakId.innerHTML = "请填写有效手机号";
        return false;
    }
    telbakId.innerHTML = "";
    return true;
}

/*密码验证*/
function checkPwd() {
    var pwd =  document.getElementById("pwd").value;
    var pwdId = document.getElementById("pwd_prompt");
    pwdId.innerHTML = "";
    var reg = /^[A-Za-z0-9_]{6,20}$/;
    if (reg.test(pwd) == false) {
        pwdId.innerHTML = "密码只能包含6-20位字母大小写、数字和下划线";
        return false;
    }
    return true;
}

/*重复密码验证*/
function checkRepwd() {
    var repwd =  document.getElementById("repwd").value;
    var pwd =  document.getElementById("pwd").value;
    var repwdId = document.getElementById("repwd_prompt");
    repwdId.innerHTML = "";
    if (pwd != repwd) {
        repwdId.innerHTML = "两次输入的密码不一致";
        return false;
    }
    return true;
}

/*服务网点验证*/
function checkSweb() {
    var sweb = document.getElementById("sweb").value;
    var swebId = document.getElementById("sweb_prompt");
    var reg = /^[a-zA-Z0-9\u4e00-\u9fa5]+$/;
    if (reg.test(sweb) == false) {
        swebId.innerHTML = "服务网点只能包含字母大小写、数字和中文";
        return false;
    }
    swebId.innerHTML = "";
    return true;
}
/*负责人姓名验证*/
function checkMname() {
    var mname = document.getElementById("mname").value;
    var mnameId = document.getElementById("mname_prompt");
    var reg = /^[a-zA-Z0-9\u4e00-\u9fa5]+$/;
    if (reg.test(mname) == false) {
        mnameId.innerHTML = "负责人名称只能包含字母大小写、数字和中文";
        return false;
    }
    mnameId.innerHTML = "";
    return true;
}
/*身份证号码验证*/
function checkNid() {
    var nid = document.getElementById("nid").value;
    var NId = document.getElementById("nid_prompt");
    var reg = /^[0-9]{18}$|^[0-9]{17}X$/;
    if (reg.test(nid) == false) {
        NId.innerHTML = "请填写有效身份证号码";
        return false;
    }
    NId.innerHTML = "";
    return true;
}

$(function () {
    //绑定失去焦点事件
    /*$("#mobile").blur(checkMobile);
    $("#code").blur(checkCode);
    $("#telbak").blur(checkMobilebak);
    $("#pwd").blur(checkPwd);
    $("#repwd").blur(checkRepwd);
    $("#sweb").blur(checkSweb);
    $("#mname").blur(checkMname);
    $("#nid").blur(checkNid);*/

    //提交表单,调用验证函数
    $("#myform").submit(function () {
        var flag = true;
        if (!checkMobile()) flag = false;
        if (!checkCode()) flag = false;
        if (!checkMobilebak()) flag = false;
        if (!checkPwd()) flag = false;
        if (!checkRepwd()) flag = false;
        if (!checkSweb()) flag = false;
        if (!checkMname()) flag = false;
        if (!checkNid()) flag = false;

        return flag;
 });
});




