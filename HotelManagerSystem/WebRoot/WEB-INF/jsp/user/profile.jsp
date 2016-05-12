<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>profile</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <!-- Bootstrap -->
    <link href="resourse/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="resourse/assets/css/custom.css" rel="stylesheet" media="screen">


	<link href="resourse/css/carousel.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
	
    <!-- Fonts -->	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic' rel='stylesheet' type='text/css'>	
	<!-- Font-Awesome -->
    <link rel="stylesheet" type="text/css" href="resourse/assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
	
	<!-- Animo css-->
	<link href="resourse/plugins/animo/animate+animo.css" rel="stylesheet" media="screen">

    <!-- Picker -->	
	<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />	
	
    <!-- jQuery -->		
    <script src="resourse/assets/js/jquery.v2.0.3.js"></script>
	

	
  </head>
  <body id="top" class="thebg" >
    
	<div class="navbar-wrapper2 navbar-fixed-top">
      <div class="container">
		<div class="navbar mtnav">

			<div class="container offset-3">
			  <!-- Navigation-->
			  <div class="navbar-header">
				<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<a href="index.html" class="navbar-brand"><img src="resourse/images/logo.png" alt="Travel Agency Logo" class="logo"/></a>
			  </div>
			  <div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
				  <li class="dropdown active"><a href="index.html">首页</a></li>
				  <li><a href="list4.html">宾馆</a></li>
				  <li><a href="newsPage.html">新闻</a></li>			  			  
				  <li><a href="about.html">关于我们</a></li>				  			  
				  <li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">我的信息<b class="lightcaret mt-2"></b></a>
					<ul class="dropdown-menu">	
					  <li><a href="#">查看个人信息</a></li>
					  <li><a href="#">修改密码</a></li>
					</ul>
				  </li>		
				</ul>
			  </div>
			  <!-- /Navigation-->			  
			</div>
		
        </div>
      </div>
    </div>
	
	<div class="container breadcrub">
	    <div>
			<a class="homebtn left" href="#"></a>
			<div class="left">
				<ul class="bcrumbs">
					<li>/</li>
					<li><a href="#" class="active">个人信息</a></li>					
				</ul>				
			</div>
			<a class="backbtn right" href="#"></a>
		</div>
		<div class="clearfix"></div>
		<div class="brlines"></div>
	</div>	

	<!-- CONTENT -->
	<div class="container">

		
		<div class="container mt25 offset-0">
			
			
			<!-- CONTENT -->
			<div class="col-md-12 pagecontainer2 offset-0">
				
				<!-- LEFT MENU -->
				<div class="col-md-1 offset-0">
					<!-- Nav tabs -->
					<ul class="nav profile-tabs">
					  <li class="active">
						<a href="#profile" data-toggle="tab">
						<span class="profile-icon"></span>
						我的个人信息
						</a></li>
					  <li>
						  <a href="#bookings" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="bookings-icon"></span>						  
						  预定
						  </a></li>
					  <li>
						  <a href="#wishlist" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="wishlist-icon"></span>							  
						  收藏夹
						  </a></li>
					  <li>
						  <a href="#settings" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="settings-icon"></span>								  
						  设置
						  </a></li>
					  <li>
						  <a href="#history" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="history-icon"></span>								  
						  历史
						  </a></li>
					  <li>
						  <a href="#password" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="password-icon"></span>							  
						  修改密码
						  </a></li>
					  <li>
						  <a href="#newsletter" data-toggle="tab" onclick="mySelectUpdate()">
						  <span class="newsletter-icon"></span>									  
						  我的信箱
						  </a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- LEFT MENU -->
					
				<!-- RIGHT CPNTENT -->
				<div class="col-md-11 offset-0">
					<!-- Tab panes from left menu -->
					<div class="tab-content5">
					
					  <!-- TAB 1 -->
					  <div class="tab-pane padding40 active" id="profile">

						  <!-- Admin top -->
						  <div class="col-md-4 offset-0">
							<img src="resourse/images/user.png" alt="" class="left margright20"/>
							<p class="size12 grey margtop10">
							您好 <span class="lred">Administrator</span><br/>
							<a href="#" class="lblue">更换头像</a>
							</p>
							<div class="clearfix"></div>
						  </div>
						  <div class="col-md-4">
						  </div>
						  <div class="col-md-4 offset-0">
							<table class="table table-bordered  mt-10">
							<tr class="grey opensans">
								<td class="center"><span class="size30 slim lh4">2</span><br/><span class="size12">旅行</span></td>
								<td class="center"><span class="size30 slim lh4">5</span><br/><span class="size12">地点</span></td>
								<td class="center"><span class="size30 slim lh4">14</span><br/><span class="size12">距离天数</span></td>
								<td class="center"><span class="size30 slim lh4">3</span><br/><span class="size12">国家</span></td>
							</tr>
							</table>
						  </div>
						  <!-- End of Admin top -->
						  
						  
						<div class="clearfix"></div>
								

						<!-- COL 1 -->
						<div class="col-md-12 offset-0">
							<table>
								<tr>
									<td>
										<div class="radio left">
										  <label>
											<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
											女 
										  </label>
										</div>
									</td>
									<td>
										<div class="radio">
										  <label>
											<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
											男 
										  </label>
										</div>
									</td>
								</tr>
							</table>
							
							
							<br/>
							姓名*:
							<input type="text" class="form-control" placeholder="John Doe" rel="popover" id="name" >
							<br/>
							用户名*:
							<input type="text" class="form-control" placeholder="Jack" rel="popover" id="username" data-content="This field is mandatory" data-original-title="Here you can edit your username">						  
							<br/>
							E-mail*:
							<input type="text" class="form-control" placeholder="office@email.com" id="email" data-content="This field is mandatory" data-original-title="Edit your email address">
							<br/>
							电话号码:
							<input type="text" class="form-control" placeholder="">	
							
							<br/>
							出生日期:<br/>
							<div class="row">
								<div class="col-md-4">
									<select class="form-control mySelectBoxClass">
									  <option>12:00 AM</option>
									</select>
								</div>
								<div class="col-md-4">
									<select class="form-control mySelectBoxClass">
									  <option>12:00 AM</option>
									</select>
								</div>
								<div class="col-md-4">
									<select class="form-control mySelectBoxClass">
									  <option>12:00 AM</option>
									</select>
								</div>
							</div>


						
				
						<br/>
						<br/>						
						<span class="size16 bold">地址</span>
						<div class="line2"></div>
						
						<br/>
						公司名称:
						<input type="text" class="form-control" placeholder="">	
						
						<br/>
						地址*:
						<input type="text" class="form-control" placeholder="">							
						
						<br/>
						邮政编码*:
						<input type="text" class="form-control" placeholder="">

						<br/>
						国家*:
						<select class="form-control mySelectBoxClass">
						  <option value="">国家...</option>
							<option value="AF">Afghanistan</option>
							<option value="AL">Albania</option>
							<option value="DZ">Algeria</option>
							<option value="AS">American Samoa</option>
							<option value="AD">Andorra</option>
							<option value="AG">Angola</option>
							<option value="AI">Anguilla</option>
							<option value="AG">Antigua &amp; Barbuda</option>
							<option value="AR">Argentina</option>
							<option value="AA">Armenia</option>
							<option value="AW">Aruba</option>
							<option value="AU">Australia</option>
							<option value="AT">Austria</option>
							<option value="AZ">Azerbaijan</option>
							<option value="BS">Bahamas</option>
							<option value="BH">Bahrain</option>
							<option value="BD">Bangladesh</option>
							<option value="BB">Barbados</option>
							<option value="BY">Belarus</option>
							<option value="BE">Belgium</option>
							<option value="BZ">Belize</option>
							<option value="BJ">Benin</option>
							<option value="BM">Bermuda</option>
							<option value="BT">Bhutan</option>
							<option value="BO">Bolivia</option>
							<option value="BL">Bonaire</option>
							<option value="BA">Bosnia &amp; Herzegovina</option>
							<option value="BW">Botswana</option>
							<option value="BR">Brazil</option>
							<option value="BC">British Indian Ocean Ter</option>
							<option value="BN">Brunei</option>
							<option value="BG">Bulgaria</option>
							<option value="BF">Burkina Faso</option>
							<option value="BI">Burundi</option>
							<option value="KH">Cambodia</option>
							<option value="CM">Cameroon</option>
							<option value="CA">Canada</option>
							<option value="IC">Canary Islands</option>
							<option value="CV">Cape Verde</option>
							<option value="KY">Cayman Islands</option>
							<option value="CF">Central African Republic</option>
							<option value="TD">Chad</option>
							<option value="CD">Channel Islands</option>
							<option value="CL">Chile</option>
							<option value="CN">China</option>
							<option value="CI">Christmas Island</option>
							<option value="CS">Cocos Island</option>
							<option value="CO">Colombia</option>
							<option value="CC">Comoros</option>
							<option value="CG">Congo</option>
							<option value="CK">Cook Islands</option>
							<option value="CR">Costa Rica</option>
							<option value="CT">Cote D'Ivoire</option>
							<option value="HR">Croatia</option>
							<option value="CU">Cuba</option>
							<option value="CB">Curacao</option>
							<option value="CY">Cyprus</option>
							<option value="CZ">Czech Republic</option>
							<option value="DK">Denmark</option>
							<option value="DJ">Djibouti</option>
							<option value="DM">Dominica</option>
							<option value="DO">Dominican Republic</option>
							<option value="TM">East Timor</option>
							<option value="EC">Ecuador</option>
							<option value="EG">Egypt</option>
							<option value="SV">El Salvador</option>
							<option value="GQ">Equatorial Guinea</option>
							<option value="ER">Eritrea</option>
							<option value="EE">Estonia</option>
							<option value="ET">Ethiopia</option>
							<option value="FA">Falkland Islands</option>
							<option value="FO">Faroe Islands</option>
							<option value="FJ">Fiji</option>
							<option value="FI">Finland</option>
							<option value="FR">France</option>
							<option value="GF">French Guiana</option>
							<option value="PF">French Polynesia</option>
							<option value="FS">French Southern Ter</option>
							<option value="GA">Gabon</option>
							<option value="GM">Gambia</option>
							<option value="GE">Georgia</option>
							<option value="DE">Germany</option>
							<option value="GH">Ghana</option>
							<option value="GI">Gibraltar</option>
							<option value="GB">Great Britain</option>
							<option value="GR">Greece</option>
							<option value="GL">Greenland</option>
							<option value="GD">Grenada</option>
							<option value="GP">Guadeloupe</option>
							<option value="GU">Guam</option>
							<option value="GT">Guatemala</option>
							<option value="GN">Guinea</option>
							<option value="GY">Guyana</option>
							<option value="HT">Haiti</option>
							<option value="HW">Hawaii</option>
							<option value="HN">Honduras</option>
							<option value="HK">Hong Kong</option>
							<option value="HU">Hungary</option>
							<option value="IS">Iceland</option>
							<option value="IN">India</option>
							<option value="ID">Indonesia</option>
							<option value="IA">Iran</option>
							<option value="IQ">Iraq</option>
							<option value="IR">Ireland</option>
							<option value="IM">Isle of Man</option>
							<option value="IL">Israel</option>
							<option value="IT">Italy</option>
							<option value="JM">Jamaica</option>
							<option value="JP">Japan</option>
							<option value="JO">Jordan</option>
							<option value="KZ">Kazakhstan</option>
							<option value="KE">Kenya</option>
							<option value="KI">Kiribati</option>
							<option value="NK">Korea North</option>
							<option value="KS">Korea South</option>
							<option value="KW">Kuwait</option>
							<option value="KG">Kyrgyzstan</option>
							<option value="LA">Laos</option>
							<option value="LV">Latvia</option>
							<option value="LB">Lebanon</option>
							<option value="LS">Lesotho</option>
							<option value="LR">Liberia</option>
							<option value="LY">Libya</option>
							<option value="LI">Liechtenstein</option>
							<option value="LT">Lithuania</option>
							<option value="LU">Luxembourg</option>
							<option value="MO">Macau</option>
							<option value="MK">Macedonia</option>
							<option value="MG">Madagascar</option>
							<option value="MY">Malaysia</option>
							<option value="MW">Malawi</option>
							<option value="MV">Maldives</option>
							<option value="ML">Mali</option>
							<option value="MT">Malta</option>
							<option value="MH">Marshall Islands</option>
							<option value="MQ">Martinique</option>
							<option value="MR">Mauritania</option>
							<option value="MU">Mauritius</option>
							<option value="ME">Mayotte</option>
							<option value="MX">Mexico</option>
							<option value="MI">Midway Islands</option>
							<option value="MD">Moldova</option>
							<option value="MC">Monaco</option>
							<option value="MN">Mongolia</option>
							<option value="MS">Montserrat</option>
							<option value="MA">Morocco</option>
							<option value="MZ">Mozambique</option>
							<option value="MM">Myanmar</option>
							<option value="NA">Nambia</option>
							<option value="NU">Nauru</option>
							<option value="NP">Nepal</option>
							<option value="AN">Netherland Antilles</option>
							<option value="NL">Netherlands (Holland, Europe)</option>
							<option value="NV">Nevis</option>
							<option value="NC">New Caledonia</option>
							<option value="NZ">New Zealand</option>
							<option value="NI">Nicaragua</option>
							<option value="NE">Niger</option>
							<option value="NG">Nigeria</option>
							<option value="NW">Niue</option>
							<option value="NF">Norfolk Island</option>
							<option value="NO">Norway</option>
							<option value="OM">Oman</option>
							<option value="PK">Pakistan</option>
							<option value="PW">Palau Island</option>
							<option value="PS">Palestine</option>
							<option value="PA">Panama</option>
							<option value="PG">Papua New Guinea</option>
							<option value="PY">Paraguay</option>
							<option value="PE">Peru</option>
							<option value="PH">Philippines</option>
							<option value="PO">Pitcairn Island</option>
							<option value="PL">Poland</option>
							<option value="PT">Portugal</option>
							<option value="PR">Puerto Rico</option>
							<option value="QA">Qatar</option>
							<option value="ME">Republic of Montenegro</option>
							<option value="RS">Republic of Serbia</option>
							<option value="RE">Reunion</option>
							<option value="RO">Romania</option>
							<option value="RU">Russia</option>
							<option value="RW">Rwanda</option>
							<option value="NT">St Barthelemy</option>
							<option value="EU">St Eustatius</option>
							<option value="HE">St Helena</option>
							<option value="KN">St Kitts-Nevis</option>
							<option value="LC">St Lucia</option>
							<option value="MB">St Maarten</option>
							<option value="PM">St Pierre &amp; Miquelon</option>
							<option value="VC">St Vincent &amp; Grenadines</option>
							<option value="SP">Saipan</option>
							<option value="SO">Samoa</option>
							<option value="AS">Samoa American</option>
							<option value="SM">San Marino</option>
							<option value="ST">Sao Tome &amp; Principe</option>
							<option value="SA">Saudi Arabia</option>
							<option value="SN">Senegal</option>
							<option value="RS">Serbia</option>
							<option value="SC">Seychelles</option>
							<option value="SL">Sierra Leone</option>
							<option value="SG">Singapore</option>
							<option value="SK">Slovakia</option>
							<option value="SI">Slovenia</option>
							<option value="SB">Solomon Islands</option>
							<option value="OI">Somalia</option>
							<option value="ZA">South Africa</option>
							<option value="ES">Spain</option>
							<option value="LK">Sri Lanka</option>
							<option value="SD">Sudan</option>
							<option value="SR">Suriname</option>
							<option value="SZ">Swaziland</option>
							<option value="SE">Sweden</option>
							<option value="CH">Switzerland</option>
							<option value="SY">Syria</option>
							<option value="TA">Tahiti</option>
							<option value="TW">Taiwan</option>
							<option value="TJ">Tajikistan</option>
							<option value="TZ">Tanzania</option>
							<option value="TH">Thailand</option>
							<option value="TG">Togo</option>
							<option value="TK">Tokelau</option>
							<option value="TO">Tonga</option>
							<option value="TT">Trinidad &amp; Tobago</option>
							<option value="TN">Tunisia</option>
							<option value="TR">Turkey</option>
							<option value="TU">Turkmenistan</option>
							<option value="TC">Turks &amp; Caicos Is</option>
							<option value="TV">Tuvalu</option>
							<option value="UG">Uganda</option>
							<option value="UA">Ukraine</option>
							<option value="AE">United Arab Emirates</option>
							<option value="GB">United Kingdom</option>
							<option value="US">United States of America</option>
							<option value="UY">Uruguay</option>
							<option value="UZ">Uzbekistan</option>
							<option value="VU">Vanuatu</option>
							<option value="VS">Vatican City State</option>
							<option value="VE">Venezuela</option>
							<option value="VN">Vietnam</option>
							<option value="VB">Virgin Islands (Brit)</option>
							<option value="VA">Virgin Islands (USA)</option>
							<option value="WK">Wake Island</option>
							<option value="WF">Wallis &amp; Futana Is</option>
							<option value="YE">Yemen</option>
							<option value="ZR">Zaire</option>
							<option value="ZM">Zambia</option>
							<option value="ZW">Zimbabwe</option>
						</select>
						
						<br/><br/>
						城市*:
						<input type="text" class="form-control" placeholder="例如：武汉">

						<br/>
						地区*:
						<input type="text" class="form-control" placeholder="">

					    <button type="submit" class="cyanbtn  margtop20">更新</button>	
						</div>
						<!-- END OF COL 1 -->
						
						<div class="clearfix"></div><br/><br/><br/>
						
						
						<div class="row">
							<div class="col-md-4 grey">
								<span class="size16 bold dark">个人基本信息</span>
								<div class="line2"></div>
								<a href="#" class="clblue">New York Marriott Marquis</a> from <span class="bold green">$150</span><br/>
								<a href="#" class="clblue">The Jade Hotel</a> from <span class="bold green">$49</span><br/>
								<a href="#">查看所有</a>
							</div>
							<div class="col-md-4">
								<span class="size16 bold dark">愿望清单</span>
								<div class="line2"></div>
								<a href="#" class="clblue">Incredible places</a> (1)<br/>
								<a href="#" class="clblue">My next places</a> (0)<br/>
								<a href="#">+ 添加新计划</a>							
							</div>						
							<div class="col-md-4">
								<span class="size16 bold dark">历史记录</span>
								<div class="line2"></div>				
								<a href="#" class="clblue">Solita Soho Hotel</a> from <span class="bold green">$150</span><br/>
								<a href="#" class="clblue">Helmsley Park Lane Hotel</a> from <span class="bold green">$49</span><br/>
								<a href="#">查看所有</a>							
							</div>			
						</div>
						
						
						
						
						
					  </div>
					  <!-- END OF TAB 1 -->		

					  
					  
					  <!-- TAB 2 -->					  
					  <div class="tab-pane" id="bookings">
						<div class="padding40">
						
							<div class="col-md-4 offset-0">
								<span class="dark size18">Places</span>
								<div class="line4"></div>
								<ul class="blogcat">
									<li><a href="#">Rome</a> <span class="badge indent0">3</span></li>
									<li><a href="#">Malaga</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Marbella</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Gibraltar</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Zakynthos</a> <span class="badge indent0">2</span></li>
									<li><a href="#">Thasos</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Santorini</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Golden Sands</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Sunny Beach</a> <span class="badge indent0">1</span></li>
								</ul>
							</div>
							<div class="col-md-4 offset-0">
								<span class="dark size18">Trips</span>
								<div class="line4"></div>
								<ul class="blogcat">
									<li><a href="#">Italy</a> <span class="badge indent0">2</span></li>
									<li><a href="#">England</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Greece</a> <span class="badge indent0">2</span></li>
									<li><a href="#">Spain</a> <span class="badge indent0">1</span></li>
									<li><a href="#">Bulgary</a> <span class="badge indent0">1</span></li>
								</ul>
							</div>							
							<div class="col-md-4 offset-0">
								<span class="dark size18">Countries</span>
								<div class="line4"></div>
								<!-- <ul class="blogcat">
									<li><img src="resourse/images/flags/IT.png" class="right" alt=""/><a href="#">Italy</a></li>
									<li><img src="resourse/images/flags/GB.png" class="right" alt=""/><a href="#">England</a></li>
									<li><img src="resourse/images/flags/GR.png" class="right" alt=""/><a href="#">Greece</a></li>
									<li><img src="resourse/images/flags/ES.png" class="right" alt=""/><a href="#">Spain</a></li>
									<li><img src="resourse/images/flags/BG.png" class="right" alt=""/><a href="#">Bulgary</a></li>
								</ul> -->
							</div>
							<div class="clearfix"></div>							
							<br/>
							<br/>
							<br/>
							
							<table class="table table-bordered  mt-10">
							<tr class="grey opensans">
								<td class="center"><span class="size30 slim lh4 dark">10</span><br/><span class="size12">Trips</span></td>
								<td class="center"><span class="size30 slim lh4 dark">20</span><br/><span class="size12">Places</span></td>
								<td class="center"><span class="size30 slim lh4 dark">14</span><br/><span class="size12">Days away</span></td>
								<td class="center"><span class="size30 slim lh4 dark">5</span><br/><span class="size12">Countries</span></td>
							</tr>
							</table>
							
							<br/>
							<br/>
							
							<span class="dark size18">Your latest bookings</span>
							<div class="right mt-5">
								<select class="form-control mySelectBoxClass hasCustomSelect cpwidth">
								  <option value="">All time</option>
								  <option value="">Countries</option>
								  <option value="">Date</option>
								</select>
							</div>		
							<div class="right mr20 mt-5">
								<select class="form-control mySelectBoxClass hasCustomSelect cpwidth2">
								  <option value="">5/page</option>
								  <option value="">15/page</option>
								  <option value="">20/page</option>
								</select>
							</div>								
							<div class="line4"></div>
							<br/>
							
							<div class="col-md-4 offset-0">
								<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-1.jpg"></a>
								<a class="dark" href="#"><b>Hotel Dany</b></a> /
								<span class="dark size12">Greece - Zakynthos</span><br>
								<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
								<img alt="" src="resourse/images/filter-rating-5.png"><br/>
							</div>
							<div class="col-md-7">
								<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
							</div>
							<div class="col-md-1 offset-0">
								<button onclick="errorMessage()" type="submit" class="btn-search5 right">More</button>
							</div>
							<div class="clearfix"></div>
							<div class="line4"></div>
							
							<div class="col-md-4 offset-0">
								<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-2.jpg"></a>
								<a class="dark" href="#"><b>Hotel Dany</b></a> /
								<span class="dark size12">Greece - Zakynthos</span><br>
								<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
								<img alt="" src="images/filter-rating-5.png"><br/>
							</div>
							<div class="col-md-7">
								<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
							</div>
							<div class="col-md-1 offset-0">
								<button onclick="errorMessage()" type="submit" class="btn-search5 right">More</button>
							</div>
							<div class="clearfix"></div>
							<div class="line4"></div>
							
							<div class="col-md-4 offset-0">
								<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-3.jpg"></a>
								<a class="dark" href="#"><b>Hotel Dany</b></a> /
								<span class="dark size12">Greece - Zakynthos</span><br>
								<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
								<img alt="" src="images/filter-rating-5.png"><br/>
							</div>
							<div class="col-md-7">
								<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
							</div>
							<div class="col-md-1 offset-0">
								<button onclick="errorMessage()" type="submit" class="btn-search5 right">More</button>
							</div>
							<div class="clearfix"></div>
							<div class="line4"></div>
							
							<div class="col-md-4 offset-0">
								<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-1.jpg"></a>
								<a class="dark" href="#"><b>Hotel Dany</b></a> /
								<span class="dark size12">Greece - Zakynthos</span><br>
								<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
								<img alt="" src="images/filter-rating-5.png"><br/>
							</div>
							<div class="col-md-7">
								<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
							</div>
							<div class="col-md-1 offset-0">
								<button onclick="errorMessage()" type="submit" class="btn-search5 right">More</button>
							</div>
							<div class="clearfix"></div>
							<div class="line4"></div>
							
							<div class="col-md-4 offset-0">
								<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-2.jpg"></a>
								<a class="dark" href="#"><b>Hotel Dany</b></a> /
								<span class="dark size12">Greece - Zakynthos</span><br>
								<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
								<img alt="" src="resourse/images/filter-rating-5.png"><br/>
							</div>
							<div class="col-md-7">
								<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
							</div>
							<div class="col-md-1 offset-0">
								<button onclick="errorMessage()" type="submit" class="btn-search5 right">More</button>
							</div>
							<div class="clearfix"></div>
				
							<div class="line4"></div>
							<ul class="pagination right paddingbtm20">
							  <li class="disabled"><a href="#">«</a></li>
							  <li><a href="#">1</a></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">»</a></li>
							</ul>
							
							
						
						</div>
					  </div>
					  <!-- END OF TAB 2 -->	
					  
					  <!-- TAB 3 -->					  
					  <div class="tab-pane" id="wishlist">
						<div class="padding40">
						

							<input type="text" placeholder="Make new category" class="form-control wh80percent left">
							<button type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-plus"></span>Add new</button>

							<div class="clearfix"></div>
							<br/>
							
							<ul class="blogcat">
								<li><a href="#">Incredible places</a> <span class="badge indent0">3</span></li>
								<li><a href="#">My next places</a> <span class="badge indent0">1</span></li>
								<li><a href="#">Europe</a> <span class="badge indent0">1</span></li>
							</ul>
						
							<br/>
							<br/>
							
							<span class="dark size18">Favourites list</span>
							<div class="right mt-5">
								<select class="form-control mySelectBoxClass hasCustomSelect cpwidth2">
								  <option value="">5/page</option>
								  <option value="">15/page</option>
								  <option value="">20/page</option>
								</select>
							</div>								
							<div class="line4"></div>
							<br/>
							
							<div>
								<div class="col-md-4 offset-0">
									<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-1.jpg"></a>
									<a class="dark" href="#"><b>Hotel Dany</b></a> /
									<span class="dark size12">Greece - Zakynthos</span><br>
									<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
									<img alt="" src="resourse/images/filter-rating-5.png"><br/>
								</div>
								<div class="col-md-7">
									<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
								</div>
								<div class="col-md-1 offset-0">
									<button onclick="errorMessage()" type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-heart dark"></span></button>
								</div>
								<button aria-hidden="true" data-dismiss="alert" class="close mr20 mt10" type="button">×</button>	
								<div class="clearfix"></div>
								<div class="line6"></div>
							</div>
							
							<div>
								<div class="col-md-4 offset-0">
									<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-2.jpg"></a>
									<a class="dark" href="#"><b>Hotel Dany</b></a> /
									<span class="dark size12">Greece - Zakynthos</span><br>
									<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
									<img alt="" src="resourse/images/filter-rating-5.png"><br/>
								</div>
								<div class="col-md-7">
									<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
								</div>
								<div class="col-md-1 offset-0">
									<button onclick="errorMessage()" type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-heart dark"></span></button>
								</div>
								<button aria-hidden="true" data-dismiss="alert" class="close mr20 mt10" type="button">×</button>
								<div class="clearfix"></div>
								<div class="line6"></div>
							</div>
							
							<div>
								<div class="col-md-4 offset-0">
									<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-3.jpg"></a>
									<a class="dark" href="#"><b>Hotel Dany</b></a> /
									<span class="dark size12">Greece - Zakynthos</span><br>
									<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
									<img alt="" src="images/filter-rating-5.png"><br/>
								</div>
								<div class="col-md-7">
									<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
								</div>
								<div class="col-md-1 offset-0">
									<button onclick="errorMessage()" type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-heart"></span></button>
								</div>
								<button aria-hidden="true" data-dismiss="alert" class="close mr20 mt10" type="button">×</button>									
								<div class="clearfix"></div>
								<div class="line6"></div>
							</div>
							
							<div>
								<div class="col-md-4 offset-0">
									<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-1.jpg"></a>
									<a class="dark" href="#"><b>Hotel Dany</b></a> /
									<span class="dark size12">Greece - Zakynthos</span><br>
									<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
									<img alt="" src="resourse/images/filter-rating-5.png"><br/>
								</div>
								<div class="col-md-7">
									<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
								</div>
								<div class="col-md-1 offset-0">
									<button onclick="errorMessage()" type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-heart dark"></span></button>
								</div>
								<button aria-hidden="true" data-dismiss="alert" class="close mr20 mt10" type="button">×</button>									
								<div class="clearfix"></div>
								<div class="line6"></div>
							</div>
							
							<div>
								<div class="col-md-4 offset-0">
									<a href="#"><img alt="" class="left mr20" src="resourse/images/smallthumb-2.jpg"></a>
									<a class="dark" href="#"><b>Hotel Dany</b></a> /
									<span class="dark size12">Greece - Zakynthos</span><br>
									<span class="opensans green bold size14">$36-$160</span> <span class="grey">avg/night</span><br>
									<img alt="" src="resourse/images/filter-rating-5.png"><br/>
								</div>
								<div class="col-md-7">
									<span class="grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus, quam vel interdum lacinia, lacus justo rutrum lorem, in fermentum ligula est a diam. Nam aliquet arcu est, a malesuada odio laoreet non.</span>
								</div>
								<div class="col-md-1 offset-0">
									<button onclick="errorMessage()" type="submit" class="btn-search5 right"><span class="glyphicon glyphicon-heart"></span></button>
								</div>
								<button aria-hidden="true" data-dismiss="alert" class="close mr20 mt10" type="button">×</button>									
								<div class="clearfix"></div>
							</div>
				
							<div class="line4"></div>
							<ul class="pagination right paddingbtm20">
							  <li class="disabled"><a href="#">«</a></li>
							  <li><a href="#">1</a></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">»</a></li>
							</ul>
							
							
						
						
						
						
						</div>
					  </div>
					  <!-- END OF TAB 3 -->	
					  
					  <!-- TAB 4 -->					  
					  <div class="tab-pane" id="settings">
						<div class="padding40 dark">
						
						
							<span class="dark size18">Settings</span>
							<div class="line4"></div>
							
							<span class="dark size14 bold">Notifications</span><br/>
							Change the way you recieve notifications.
							
							<div class="checkbox dark">
							  <label>
								<input type="checkbox" checked> Make my profile private
							  </label>
							</div>
							<div class="checkbox dark">
							  <label>
								<input type="checkbox"> Send an email when someone replyes to one of your comments.
							  </label>
							</div>
							
							<br/>
							<br/>
						
							<span class="dark size14 bold">Who can contact me?</span><br/>
							<select class="form-control mySelectBoxClass hasCustomSelect cpwidth">
							  <option value="">Everyone</option>
							  <option value="">No one</option>
							  <option value="">Friends</option>
							</select>
						
							<br/>
							<br/>
							<br/>
						
							<span class="dark size14 bold">Payments</span><br/>
							<div class="checkbox dark">
							  <label>
								<input type="checkbox" checked> Auto Payment
							  </label>
							</div>
							
							<br/>
							<br/>
													
							<span class="dark size14 bold">Credit Card Details</span>
							<div class="line4"></div>							
							<br/>
							Card Type<br/>
							<select class="form-control mySelectBoxClass hasCustomSelect cpwidth">
							  <option value="">Visa</option>
							  <option value="">MasterCard</option>
							  <option value="">Discover</option>
							  <option value="">American Express</option>
							</select>
							<br/>
							<br/>
							Card Number<br/>
							<input type="text" class="form-control" placeholder="XXXX-XXXX-XXXX-XXX">
							<br/>
							Expiry date<br/>
							<select class="form-control mySelectBoxClass hasCustomSelect cpwidth2">
							  <option value="">01</option>
							  <option value="">02</option>
							  <option value="">03</option>
							  <option value="">04</option>
							  <option value="">05</option>
							  <option value="">06</option>
							  <option value="">07</option>
							  <option value="">08</option>
							  <option value="">09</option>
							  <option value="">10</option>
							  <option value="">11</option>
							  <option value="">12</option>
							</select>
							/
							<select class="form-control mySelectBoxClass hasCustomSelect cpwidth2">
							  <option value="">2013</option>
							  <option value="">2014</option>
							  <option value="">2015</option>
							  <option value="">2016</option>
							  <option value="">2017</option>
							  <option value="">2018</option>

							</select>
							
							<br/>
							CVV<br/>
							<input type="text" class="form-control cpwidth2" placeholder="">
							<br/>
							<br/>
							
							<button type="submit" class="btn-search5">Save changes</button>
							
							
							
							
						</div>
					  </div>
					  <!-- END OF TAB 4 -->	
					  
					  <!-- TAB 5 -->					  
					  <div class="tab-pane" id="history">
						<div class="padding40">
						
							<span class="dark size18">History</span>
							<div class="line4"></div>
							
							<br/>
							
							<div class="col-md-3 bold">Date</div>
							<div class="col-md-3 bold">Destination</div>
							<div class="col-md-3 bold">Service</div>
							<div class="col-md-3 bold textright">Action</div>
							<div class="clearfix"></div>
							<div class="line4"></div>
							
							<div class="col-md-3">01.05.09</div>
							<div class="col-md-3">Grece - Zakynthos</div>
							<div class="col-md-3">Hotel</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
							<div class="line4"></div>
							<div class="col-md-3">17.07.10</div>
							<div class="col-md-3">Spain - Malaga</div>
							<div class="col-md-3">Flight Tickets</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
							<div class="line4"></div>
							<div class="col-md-3">01.05.09</div>
							<div class="col-md-3">Bulgary - Sunny Beach</div>
							<div class="col-md-3">Flight Tickets</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
							<div class="line4"></div>
							<div class="col-md-3">01.05.09</div>
							<div class="col-md-3">France - Paris</div>
							<div class="col-md-3">Rent a car</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
							<div class="line4"></div>
							<div class="col-md-3">15.03.11</div>
							<div class="col-md-3">U.A.E. - Dubai</div>
							<div class="col-md-3">Car + Hotel + Flight</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
							<div class="line4"></div>
							<div class="col-md-3">15.06.12</div>
							<div class="col-md-3">Grand Britain - London</div>
							<div class="col-md-3">Car + Hotel + Flight</div>
							<div class="col-md-3 textright"><button type="submit" class="btn-search5"><span class="glyphicon glyphicon-plus"></span></button></div>
							<div class="clearfix"></div>
							
						</div>
					  </div>
					  <!-- END OF TAB 5 -->	
					  
					  <!-- TAB 6 -->					  
					  <div class="tab-pane" id="password">
						<div class="padding40">
						
							<span class="dark size18">修改密码</span>
							<div class="line4"></div>
							
							用户名<br/>
							<input type="text" class="form-control " placeholder="">
							<br/>
							旧密码<br/>
							<input type="text" class="form-control " placeholder="">
							<br/>
							新密码<br/>
							<input type="text" class="form-control " placeholder="">
							<br/>
							<button type="submit" class="btn-search5">保存修改</button>
							
							<br/>
							<br/>
							<br/>
							<span class="dark size18">安全验证</span>
							<div class="line4"></div>
							
							您的父亲叫什么名字?
							<input type="password" class="form-control " placeholder="●●●●●●●●●">
							
							<br/>
							请选择一个问题作为验证问题<br/>
							<select class="form-control mySelectBoxClass hasCustomSelect cpwidth3">
							  <option value="">您父亲叫什么名字?</option>
							  <option value="">您母亲的生日是什么时候?</option>
							  <option value="">您的手机尾号是多少?</option>
							</select>
							
							<br/>
							<br/>
							请输入答案<br/>
							<input type="text" class="form-control " placeholder="">
							
							<br/>
							请再次输入您的答案<br/>
							<input type="text" class="form-control " placeholder="">
							<br/>
							<button type="submit" class="btn-search5">保存修改</button>
							
						</div>
					  </div>
					  <!-- END OF TAB 6 -->	
					  
					  <!-- TAB 7 -->					  
					  <div class="tab-pane" id="newsletter">
						<div class="padding40">

							<span class="dark size18">我的邮箱</span>
							<div class="line4"></div>
						
							<div class="checkbox dark">
							  <label>
								<input type="checkbox" checked> 选中单选框以获得每月系统邮件
							  </label>
							</div>
							
							<br/>
							<button type="submit" class="btn-search5">保存修改</button>							
						
						</div>
					  </div>
					  <!-- END OF TAB 7 -->	
					  
					  

					  
					</div>
					<!-- End of Tab panes from left menu -->	
					
				</div>
				<!-- END OF RIGHT CPNTENT -->
			
			<div class="clearfix"></div><br/><br/>
			</div>
			<!-- END CONTENT -->			
			

			
		</div>
		
		
	</div>
	<!-- END OF CONTENT -->
	

	
	
	<!-- FOOTER -->
	
	<div class="footerbgblack">
		<div class="container">		
			
			<div class="col-md-3">
				<span class="ftitleblack">交流</span>
				<div class="scont">
					<a href="#" class="social1b"><img src="resourse/images/icon-facebook.png" alt=""/></a>
					<a href="#" class="social2b"><img src="resourse/images/icon-twitter.png" alt=""/></a>
					<a href="#" class="social3b"><img src="resourse/images/icon-gplus.png" alt=""/></a>
					<a href="#" class="social4b"><img src="resourse/images/icon-youtube.png" alt=""/></a>
					<br/><br/><br/>
					<a href="#"><img src="resourse/images/logosmal2.png" alt="" /></a><br/>
					<span class="grey2">&copy; 2013  |  <a href="#">隐私权政策</a><br/>
					All Rights Reserved </span>
					<br/><br/>
					
				</div>
			</div>
			<!-- End of column 1-->
			
			<div class="col-md-3">
				<span class="ftitleblack">Travel Specialists</span>
				<br/><br/>
				<ul class="footerlistblack">
					<li><a href="#">Golf Vacations</a></li>
					<li><a href="#">Ski & Snowboarding</a></li>
					<li><a href="#">Disney Parks Vacations</a></li>
					<li><a href="#">Disneyland Vacations</a></li>
					<li><a href="#">Disney World Vacations</a></li>
					<li><a href="#">Vacations As Advertised</a></li>
				</ul>
			</div>
			<!-- End of column 2-->		
			
			<div class="col-md-3">
				<span class="ftitleblack">Travel Specialists</span>
				<br/><br/>
				<ul class="footerlistblack">
					<li><a href="#">Weddings</a></li>
					<li><a href="#">Accessible Travel</a></li>
					<li><a href="#">Disney Parks</a></li>
					<li><a href="#">Cruises</a></li>
					<li><a href="#">Round the World</a></li>
					<li><a href="#">First Class Flights</a></li>
				</ul>				
			</div>
			<!-- End of column 3-->		
			
			<div class="col-md-3 grey">
				<span class="ftitleblack">时事通讯</span>
				<div class="relative">
					<input type="email" class="form-control fccustom2black" id="exampleInputEmail1" placeholder="输入Email">
					<button type="submit" class="btn btn-default btncustom">Submit<img src="images/arrow.png" alt=""/></button>
				</div>
				<br/><br/>
				<span class="ftitleblack">用户支持</span><br/>
				<span class="pnr">1-866-599-6674</span><br/>
				<span class="grey2">office@travel.com</span>
			</div>			
			<!-- End of column 4-->			
		
			
		</div>	
	</div>
	
	<div class="footerbg3black">
		<div class="container center grey"> 
		<a href="#">首页</a> | 
		<a href="#">关于我们</a> | 
		<a href="#">预订</a> | 
		<a href="#">特价优惠</a> | 
		<a href="#">博客</a> | 
		<a href="#">联系</a>
		<a href="#top" class="gotop scroll"><img src="resourse/images/spacer.png" alt=""/></a>
		</div>
	</div>
	
	
	<!-- Javascript  -->
	<script src="resourse/assets/js/js-profile.js"></script>
	
    <!-- Nicescroll  -->	
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>
	
    <!-- Custom functions -->
    <script src="resourse/assets/js/functions.js"></script>
	
    <!-- Custom Select -->
	<script type='text/javascript' src='resourse/assets/js/jquery.customSelect.js'></script>
	
	<!-- Load Animo -->
	<script src="resourse/plugins/animo/animo.js"></script>

    <!-- Picker -->	
	<script src="resourse/assets/js/jquery-ui.js"></script>	

    <!-- Picker -->	
    <script src="resourse/assets/js/jquery.easing.js"></script>	
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resourse/dist/js/bootstrap.min.js"></script>
  </body>
</html>
