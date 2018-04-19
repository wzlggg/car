<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎注册</title>
<link rel="shortcut icon" href="yikaaitu_favicon.ico">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
<script type="text/javascript" src="js/lib/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</head>
<body>
	<div id="nav">
		<div id="top">
			<img src="images/logo.png"> <span>已有账号&nbsp;<a
				href="login.html">请登录</a>
			</span>
		</div>
		<div id="content">
			<form id="myform" action="register" method="post">
				<table cellspacing="15" cellpadding="0">
					<tr>
						<td width="2px"><span class="red">*</span></td>
						<td  width="365px" class="td_border">手&nbsp;机&nbsp;号
							<input type="text" id="mobile" name="phone" value="" placeholder="请再此输入您的手机号码" onblur="checkMobile()"/>
						</td>
						<td width="100px"><input type="button" value="发送验证码"
							class="tel_btn"></td>
						<td><div id="mobile_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2" class="td_border">验&nbsp;证&nbsp;码
							<input type="text" id="code" name="code" placeholder="请再此输入您的手机验证码" onblur="checkCode()" />
						</td>
						<td><div id="code_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">备用号码
							<input type="text" name="telbak" id="telbak" placeholder="请再此输入您的备用号码" onblur="checkMobilebak()"/>
						</td>
						<td><div id="telbak_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">
							密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码
							<input type="password" id="pwd" name="password" placeholder="请再此输入您的密码" onblur="checkPwd()"/>
							<img src="images/closed%20eye.png">
						</td>
						<td><div id="pwd_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">确认密码
							<input type="password" id="repwd" name="re_password" placeholder="请重新输入您的密码" onblur="checkRepwd()"/>
							<img src="images/closed%20eye.png">
						</td>
						<td><div id="repwd_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">服务网点
							<input type="text" id="sweb" name="serve_web" placeholder="请输入您的店铺名称" onblur="checkSweb()"/>
						</td>
						<td><div id="sweb_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">网点位置 
							<span id="web_area" name="web_area">雨花台区软件大道118号新华汇</span>
							<img src="images/loator.png">
						</td>
						<td></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">负&nbsp;责&nbsp;人 <input
							type="text" id="mname" name="mname" placeholder="请输入负责人姓名" onblur="checkMname()"/>
						</td>
						<td><div id="mname_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">身份证号 <input type="text"
							id="nid" name="nid" placeholder="请输入您的身份证号码" onblur="checkNid()"/>
						</td>
						<td><div id="nid_prompt" class="in"></div></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">身份证正面照
							<button class="uploading_btn">点击上传</button>
						</td>
						<td>
							<p>仅支持.jpg.bmp的图片格式，图片大小不超过2M</p>
						</td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border">身份证反面照
							<button class="uploading_btn">点击上传</button>
						</td>
						<td></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="2" class="td_border"><select>
								<option selected="selected" name="select0">服务类型</option>
								<option name="select1">服务站类</option>
								<option name="select2">综合修理厂</option>
								<option name="select3">快修门店</option>
								<option name="select4">拖车</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td><span class="red">*</span></td>
						<td colspan="3">
							<div class="photo">
								<h2>服务网点相关照片</h2>
								<ul>
									<li><img src="images/add%20photo.png"><br /> 网点门头照片</li>
									<li><img src="images/add%20photo.png"><br /> 网点车间照片</li>
									<li><img src="images/add%20photo.png"><br />
										网点办公室照片</li>
									<li><img src="images/add%20photo.png"><br />
										网点维修设备照片</li>
									<li><img src="images/add%20photo.png"><br />
										网点维修实景照片</li>
									<li><img src="images/add%20photo.png"><br />
										网点维修资质照片</li>
									<li>
										<p>仅支持.jpg.bmp的图片格式，图片大小不超过2M</p>
									</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3" class="center"><input type="checkbox"
							name="checkbox" checked="checked">我已阅读并同意<span
							class="ykat">《易卡爱途注册协议》</span></td>
					</tr>
					<tr>
						<td colspan="3" class="submit"><input type="submit"
							name="submit" value="立即注册" style="color:white"></td>
					</tr>
					<tr>
						<td colspan="3" class="center">
							<p>
								预约上门审核电话:<span class="ykat">025-888888</span>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="footer">
			<p>
				Copyright&copy;2004-2016&nbsp;ZDFT.com 版本所有<br /> 技术支持：江苏苏微软件技术有限公司
			</p>
		</div>
	</div>
</body>
</html>