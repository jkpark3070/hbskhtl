<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ include file="menu.jsp"%>
<html>
<head><title>[회원가입]</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {$("#radio").buttonset();	});
	
	function check() {
		var id=document.join.id.value;
		if(id==""){
			alert("공백입니다"); $("#id").blur();
			join.id.focus();
		}else if(id.length<4 || id.length>10){
			alert("4자리이상 10자리 이하로 입력하세요");
			join.id.focus(); $("#id").blur();
		}else{
			open("checkID.jsp", "title", "titlebar=no, left=200, top=200, width=300, height=10");
			$("#ids").text("");
		}
	}//check() end
	
	function certification() {
		var call=document.join.call.value;
		for(var i=0;i<call.length;i++){
			if(( call.substring(i,i+1)>=0 && call.substring(i,i+1)<=9) !=true) {alert("숫자만 입력하셔야합니다"); return;}
		}if(call==""){
			alert("공백입니다"); $("#call").blur();
			join.call.focus();
		}else if(call.length>11||call.length<9){
			alert("잘못된 형식입니다 다시 입력해주십시오");
			join.call.focus(); $("#call").blur();
		}else{
			open("checkCall.jsp", "title", "titlebar=no, left=200, top=200, width=300, height=10");
			$("#calls").text("");
		}
	}//certification() end
	
	$(function(){ $("#id").blur( function(){ 
		var id=document.join.id.value;
		if(id=="") $("#ids").text("필수 입력 정보입니다")
		else if(id.length>10||id.length<4) $("#ids").text("아이디는 4~10자만 허용됩니다")
		else {$("#ids").text("중복체크를 해주세요")}
	} ) })
	
	$(function(){ $("#pw1").blur( function(){
		var pw1=document.join.pw1.value;
		var pw2=document.join.pw2.value;
		if(pw1==""||pw2=="") $("#pws").text("필수 입력 정보입니다")
		else if(pw1.length>8||pw1.length<4) $("#pws").text("비밀번호는 4~8자만 허용됩니다")
		else $("#pws").text("")
		for(var i=0;i<pw1.length;i++){
			if(( pw1.substring(i,i+1)>=0 && pw1.substring(i,i+1)<=9) !=true) $("#pws").text("숫자만 입력하셔야합니다")
		}
	} ) })
	
	$(function(){ $("#pw2").blur( function(){
		var pw1=document.join.pw1.value;
		var pw2=document.join.pw2.value;
		if(pw1==""||pw2=="") $("#pws").text("필수 입력 정보입니다")
		else if(pw2.length>8||pw2.length<4) $("#pws").text("비밀번호는 4~8자만 허용됩니다")
		else if(pw1!=pw2) $("#pws").text("입력하신 비밀번호가 다릅니다")
		else $("#pws").text("")
		for(var i=0;i<pw2.length;i++){
			if(( pw2.substring(i,i+1)>=0 && pw2.substring(i,i+1)<=9) !=true) $("#pws").text("숫자만 입력하셔야합니다")
		}
	} ) })
	
	$(function(){ $("#name").blur( function(){ 
		var name=document.join.name.value;
		if(name=="") $("#names").text("필수 입력 정보입니다")
		else if(name.length>20) $("#names").text("이름은 1~20글자만 허용합니다")
		else $("#names").text("")
		for(var i=0;i<name.length;i++){
			if((name.substring(i,i+1)>='a' && name.substring(i,i+1)<='z' || name.substring(i,i+1)>='A' && name.substring(i,i+1)<='Z')!=true) { $("#names").text("영어만 입력하셔야합니다"); return;}
		}
	} ) })
	
	$(function(){ $("#birth").blur( function(){ 
		var birth=document.join.birth.value;
		for(var i=0;i<birth.length;i++){
			if(( birth.substring(i,i+1)>=0 && birth.substring(i,i+1)<=9) !=true) {$("#births").text("숫자만 입력하셔야합니다"); return;}
		}if(birth=="") $("#births").text("필수 입력 정보입니다")
		else if(birth.length!=6) $("#births").text("잘못된 형식입니다 다시 입력해주십시오")
		else $("#births").text("")
	} ) })
	
	$(function(){ $("#call").blur( function(){ 
		var call=document.join.call.value;
		if(call=="") $("#calls").text("필수 입력 정보입니다")
		else if(call.length>11||call.length<9) $("#calls").text("잘못된 형식입니다 다시 입력해주십시오")
		else $("#calls").text("인증 해주세요")
		for(var i=0;i<call.length;i++){
			if( (call.substring(i,i+1)>=0 && call.substring(i,i+1)<=9) !=true) $("#calls").text("숫자만 입력하셔야합니다")
		}
	} ) })
	
	$(function(){ $("#email").blur( function(){ 
		var email=document.join.email.value;
		if(email=="") $("#emails").text("필수 입력 정보입니다")
		else if(email.length>30) $("#emails").text("메일주소가 너무 깁니다")
		else if(email.indexOf("@")==-1||email.indexOf(".")==-1) $("#emails").text("올바른 형식이 아닙니다");
		else $("#emails").text("")
	} ) })
	
	$(function(){ $(".sex").click(function(){$("#sexs").text("");})})
	
	function complete() {
		var form=document.join;
		var sex=document.join.sex.value;
		if(sex==""||sex==null) {$("#sexs").text("성별을 선택해주십시오")
		}else if(  form.id.value==""||form.pw.value==""||form.name.value==""||form.birth.value==""
			||form.call.value==""||form.email.value==""||$("#ids").text()!=""
			||$("#pws").text()!=""||$("#names").text()!=""||$("#sexs").text()!=""
			||$("#births").text()!=""||$("#calls").text()!=""||$("#emails").text()!="") {
			alert("모든 정보를 정확하게 입력해주십시오");
		}else {document.join.submit();}
	}
</script>
<style>
	.join {	position: absolute; top: 225px; margin-left: 0px; padding:0px; height:900px; width: 1759px; background-color: #ffffff; }
	td {font-size: 13pt; font-weight: bold; height:10px; font-family: "맑은고딕", "굴림", "굴림체";}
	input {height: 35px; width: 350px; font-size: 11pt; font-weight: bold; font-family: "맑은고딕", "굴림", "굴림체"; }
	span {font-size: 10pt; color:red;}
</style>
</head>
<body>
	<div class="join">
		<form action=join.do name=join method="post">
			<table align=center width=360>
				<tr height="200">
					<td colspan="3">
						<font style="font-size:50pt;font-family:AR BERKLEY;" color=#1E0000><b>HaN BiT</b></font>
					</td>
				</tr>
				<tr>
					<td colspan="3" align=center>
						<input type=text id=id name=id placeholder=아이디 style="width:240px;'">
						<input type=button value=중복체크 onclick="check()" style="width: 100px;">
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=ids><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td colspan="3" align=center>
						<input type="password" id=pw1 name=pw placeholder=비밀번호 style="width: 166px;">&nbsp; 
						<input type="password" id=pw2 placeholder="비밀번호 확인" style="width: 166px;">
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=pws><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td colspan="3" align=center>
						<input type=text id=name name=name placeholder='영문 이름'>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=names><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td align=center width=400>성별</td>
					<td align="left">
						<div id="radio">
							<input type="radio" id="male" class=sex name="sex" value=male>
								<label for="male" style="width: 126px;">
									<font size=2 color=#3355cc><b>남성</b></font>
								</label>
							<input type="radio" id="female" class=sex name="sex" value=female>
								<label for="female" style="width: 126px;">
									<font size=2 color=#bb2525><b>여성</b></font>
								</label>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=sexs><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type=text id=birth name=birth style="width: 255px;'" placeholder='ex)1985/12/4 => 851204'></td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=births><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td colspan="2" align=center>
						<input type=text id=call name=call placeholder="연락처 ex)01012345678" style="width: 274px;">
						<input type=button value=인증 onclick="certification()" style="width: 70px;">
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=calls><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td colspan="2" align=center>
						<input type=text id=email name=email placeholder=이메일>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:15">
						<span id=emails><font size=10></font></span>
					</td>
				</tr>
				<tr>
					<td height=100></td>
				</tr>
				<tr>
					<td align="center" colspan=3>
						<input type="button" value="회원 가입" onclick="complete()" style="width: 170px; background-color: #E9DECA; border: 0; height: 50px;'">
						<input type="reset" value="다시 작성" onclick="join.id.readOnly=false; join.call.readOnly=false;" style="width: 170px; background-color: #E9DECA; border: 0; height: 50px;'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%@ include file="bottom.jsp"%>
</html>