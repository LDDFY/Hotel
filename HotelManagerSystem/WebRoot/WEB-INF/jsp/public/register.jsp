<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>汉驿连锁酒店</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="resourse/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="resourse/assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="resourse/assets/css/form-elements.css">
        <link rel="stylesheet" href="resourse/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    </head>

    <body background="resourse/images/login-bg.jpg">

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	
                        	<form role="form" action="register" method="post" class="registration-form">
                        		
                        		<fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>步骤 1 / 2</h3>
		                            		<p>告诉我们你是谁:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-first-name">用户名</label>
				                        	<input type="text" name="uname" placeholder="填写用户名" class="form-first-name form-control" id="uname">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">真实姓名</label>
				                        	<input type="text" name="realname" placeholder="填写真实姓名" class="form-last-name form-control" id="realname">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-about-yourself">性别</label>
				                        	<!--<textarea name="form-about-yourself" placeholder="About yourself..." 
				                        				class="form-about-yourself form-control" id="form-about-yourself"></textarea>-->
											<label> 
											<input type="radio" name="ugender" checked="checked"
													id="ugender" value="女"  />
													女 
											</label>
											<label> 
											<input type="radio" name="ugender"
													id="ugender" value="男"  />
													男 </label>
				                        </div>
				                        <button type="button" class="btn btn-next">下一步</button>
				                    </div>
			                    </fieldset>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>步骤 2 / 2</h3>
		                            		<p>设置你的账户:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-key"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-email">Email</label>
				                        	<input type="text" name="uemail" placeholder="填写Email地址" class="form-email form-control" id="uemail">
				                        </div>
										<div class="form-group">
				                        	<label class="sr-only" for="form-email">电话</label>
				                        	<input type="text" name="utel" placeholder="填写电话" class="form-email form-control" id="utel">
				                        </div>
				                        <div class="form-group">
				                    		<label class="sr-only" for="form-password">密码</label>
				                        	<input type="password" name="upwd" placeholder="设置密码" class="form-password form-control" id="upwd">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-repeat-password">确认密码</label>
				                        	<input type="password" name="form-repeat-password" placeholder="再次输入密码" 
				                        				class="form-repeat-password form-control" id="form-repeat-password">
				                        </div>
				                        <button type="button" class="btn btn-previous">返回上一步</button>
				                        <button type="submit" class="btn">注册</button>
				                    </div>
			                    </fieldset>
		                    
		                    </form>
		                    
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="resourse/assets/js/jquery-1.11.1.min.js"></script>
        <script src="resourse/assets/js/bootstrap.min.js"></script>
        <script src="resourse/assets/js/jquery.backstretch.min.js"></script>
        <script src="resourse/assets/js/retina-1.1.0.min.js"></script>
        <script src="resourse/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
    </body>

</html>