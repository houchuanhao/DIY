<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-12-05
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="css/bootstrap.css" rel="stylesheet">
  <!-- jQuery (necessary JavaScript plugins) -->
  <!-- Custom Theme files -->
  <link href='css/font.css' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
  <script type="text/javascript" src="js/av-min-1.2.1.js"></script>
  <!-- Custom Theme files -->
  <!--//theme-style-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Title</title>
  <style>
    .container{
      margin-top:10%;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-4 column">
    </div>
    <div class="col-md-4 column">
      <form role="form" action="doLogin.jsp" method="post">
        <div class="form-group">
          <label for="exampleInputEmail1">用户名</label><input type="test" class="form-control" name="UserName" id="exampleInputEmail1" />
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">密码</label><input type="password" class="form-control" name="Password" id="exampleInputPassword1" />
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-default btn-info btn-block">登陆</button>
        </div>
        <div class="form-group">
          <a href="#logDiv" data-toggle="modal" role="button">
            <button  class="btn btn-default btn-info btn-block">注册</button>
          </a>
        </div>
      </form>
    </div>
    <div class="col-md-4 column">
    </div>
  </div>
</div>

<div class="modal fade" id="logDiv" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title" id="myModalLabel">
          注册
        </h4>
      </div>
      <div class="modal-body">
        <form role="form" action=".jsp" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">用户名</label><input type="test" class="form-control" name="UserName" id="exampleInputEmail1" />
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">密码</label><input type="password" class="form-control" name="Password" id="exampleInputPassword1" />
          </div>
          <div class="form-group">
            <a>
              <button type="submit" class="btn btn-default btn-info btn-block">注册</button>
            </a>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
