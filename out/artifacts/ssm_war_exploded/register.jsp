<%--
  Created by IntelliJ IDEA.
  User: 小灰灰
  Date: 2019/9/27
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="jquery.min.js"></script>
    <link href="bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <title>注册天狗</title>

    <style>

        body{
            font-size: 12px;
            font-family: Arial;
        }
        div.login{
            background-color: #a6e1ec;
            width: 300px;
            height: 300px;
            margin-left: 60%;
            margin-top: 10%;

            padding: 20px;
        }
        div.title{
            font-size: 18px;

        }
        div.login div{
            margin: 10px;
        }
        span{
            float: left;
            padding: 10px 0px;
        }
        input{
            float: right;
        }
        a{
            text-decoration: none;
        }
        a:hover{
            text-decoration: none;
        }


    </style>
    <script>
        $(document).ready(function(){

            $("#userName").keyup(function(){
                var user = {name:$("#userName").val()};
                $.ajax(
                    {url:"CheckNameServlet",
                        data:user,
                        async:true,
                        type:"POST",
                        dataType:"html",
                        success:function(result){
                            $("#tip").html(result); }
                    });
            });
        });

    </script>
</head>
<body background="img/bg/物语%20-%201.jpg">

    <div class="login">
        <div class="title">注册会员</div>
        <form action="RegisterServlet" method="POST">
            <div id="tip">请输入名称</div>
            <div>会员名：<input class="" type="text" name="name" id="userName"></div>

            <div>登陆密码：<input class="" type="password" name="pwd" id="userPwd"></div>

            <input class="btn btn-block"  type="submit" id="sub" value="注册">
        </form>

    </div>
</body>
</html>