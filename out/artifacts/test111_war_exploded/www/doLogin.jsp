<%@ page import="com.Connecter" %>
<%@ page import="com.Login" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.MyMail" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-05
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connecter.createConnection();
    //HttpServletRequest servletRequest;
    //UserName:UserName,url:Url,dName:dName,dInt:dInt,dCode:dCode,Url:Url
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("utf-8");
    String pUrl=request.getParameter("pUrl"); //
    String dName=request.getParameter("dName");
    String UserName=request.getParameter("UserName");
    String dInt=request.getParameter("dInt");
    String dCode=request.getParameter("dCode");
    String Password=request.getParameter("Password");  //+ +"','"
    //out.print(request);
   // String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
   // String sql=
   // String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('?','?','?','?','?')";
    //String str = System.text.Encoding.UTF8.GetString("\xe5\x8f\x91\xe7\x94\x9f\xe9\x94\x99\xe8\xaf\xaf\xef\xbc\x8c\xe8\xaf\xb7\xe9\x87\x8d\xe8\xaf\x95".ToArray().Select(t => Convert.ToByte(t)).ToArray());
   /*
    Connecter.insert.setString(1,pUrl);
    Connecter.insert.setString(2,dName);
    Connecter.insert.setString(3,UserName);
    Connecter.insert.setString(4,dInt);
    Connecter.insert.setString(5,dCode);
    */
    String sql="insert into DIY(pUrl,dName,UserName,dInt,dCode) values('"+pUrl+"','"+ dName+"','"+UserName +"','"+ dInt+"','"+dCode +"')";
    // out.println(sql);
   // String usql=new String(sql.getBytes(),"UTF-8");
    out.println(sql);
    int n=Connecter.statement.executeUpdate(sql);
    String sqlQuery;
    sqlQuery="select * from diy";
    ResultSet resultSet=Connecter.statement.executeQuery(sqlQuery);
    /*
    *     String pUrl=request.getParameter("pUrl"); //
    String dName=request.getParameter("dName");
    String UserName=request.getParameter("UserName");
    String dInt=request.getParameter("dInt");
    String dCode=request.getParameter("dCode");
    *
    * */

    while(resultSet.next()){
        String str=resultSet.getString("dName");
       // String uStr=new String(str.getBytes(),"gb2312");
        out.println(str);

    }

   // MyMail.send();
    /*
    if(resultSet.next()){ //有对象
        out.println("登陆成功");
        session.setAttribute("UserName",UserName);
    }
    else{
        out.println("登陆失败");
    }
    */
    //response
%>
</body>
</html>
