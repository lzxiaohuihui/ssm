<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
            font-family: montseert;
        }
        body{
            min-height: 100vh;
            background-image: linear-gradient(120deg,#3498db,#8e44ad);
            
        }
        form{
            width:300px;
            height:480px;
            background-color: #f1f1f1;
            padding: 80px 40px;
            border-radius: 10px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
        }

        h1{
            text-align: center; 
            margin-bottom: 60px;
        }

        .txtb{
            border-bottom: 2px solid #adadad;
            position: relative;
            margin: 30px 0px ;
        }
        .txtb input{
            font-size: 15px;
            color: #333;
            border: none;
            background: none;
            width: 100%;
            outline: none;
            padding: 0 5px;
            height: 60px;
        }
        .txtb span::before{
            content: attr(data-placeholder);
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            z-index: -1;
            transition: .7s;
            
        }
        .txtb span::after{
            content: '';
            position: absolute;
            width: 0%;
            height: 2px;
            background: linear-gradient(120deg,#3498db,#8e44ad);
            transition: .5s;
        }
        .focus + span::before{
            top: 5px;
        }
        .focus + span::after{
            width: 100%;
        }

        .logbtn{
            display: block;
            width: 100%;
            height: 50px;
            border: none;
            background: linear-gradient(120deg,#3498db,#8e44ad,#3498db);
            background-size: 200%;
            color:#fff;
            outline: none;
            cursor: pointer;
            transition: .5s;

        }
        .logbtn:hover{
            background-position: right;
        }
        .bottom-text{
            margin-top: 60px;
            text-align: center;
            font-size: 14px;
        }


    </style>
    
</head>
<body>

    <script>
        var error = "<%=request.getParameter("error")%>"
        if(error=="yes"){
            alert("用户名或密码错误，请重试！");
        }
    </script>
    <form action="LoginServlet" method="POST">
        <h1>Login</h1>

        <div class="txtb">
            <input type="text" name="name">
            <span class="tipSpan" data-placeholder="UserName"></span>
        </div>

        <div class="txtb">
            <input type="password" name="pwd">
            <span class="tipSpan" data-placeholder="Password" ></span>
        </div>

        <input class="logbtn" type="submit" value="login">
        
        <div class="bottom-text">
            don't have account?<a href="#">sign up</a>
        </div>
    </form>


    <script type="text/javascript">
        $(".txtb input").on("focus",function(){
            $(this).addClass("focus");
        });

        $(".txtb input").on("blur",function(){
            if($(this).val()=='')
            $(this).removeClass("focus");
        });
        
    </script>


</body>
</html>