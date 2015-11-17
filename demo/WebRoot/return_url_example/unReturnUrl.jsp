<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.sym" %>
<%@page import="cn.beecloud.BeeCloud" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="cn.beecloud.*" %>
<%@ page import="cn.beecloud.BCEumeration.PAY_CHANNEL" %>
<%@ page import="cn.beecloud.BCEumeration.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%
    /* *
     功能：支付完成后同步跳转至本页面
     版本：1.0
     日期：2015-07-20
     说明：
     以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
     该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
     * */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; UTF-8">
    <title>UN Front Url</title>
</head>
<body>
<%
    Object respCode = request.getParameter("respCode");
    Object respMsg = request.getParameter("respMsg");

    if (respCode != null && respMsg != null) {
        if ("00".equals(respCode.toString()) && "success".equals(respMsg.toString())) {
            //成功逻辑
            out.println("<h3>银联网页支付成功，商户应自行实现成功逻辑！</h3>");
        } else {
            out.println("<h3>银联网页支付未成功，商户应自行实现失败逻辑！</h3>");
        }
    } else {
        out.println("<h3>银联网页支付未收到同步通知，商户应自行实现逻辑！</h3>");
    }

%>
</body>
</html>