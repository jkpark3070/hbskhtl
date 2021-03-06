<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%@ include file="menu.jsp"%>
<html>
<link rel="Stylesheet" type="text/css" href="css/facility.css"
	media="screen">

<style>
A:link {
	font: 9pt;
	text-decoration: none;
	color: #000000
}

A:active {
	text-decoration: none;
	color: #990099
}

A:visited {
	text-decoration: none;
	color: #3A3A3A
}

A:hover {
	text-decoration: none;
}

td {
	font-family: Segoe UI Symbol;
	color: black;
}

.facility {
	position: absolute;
	top: 230px;
	margin-left: 0px;
	padding: 0px;
	height: 900px;
	width: 1759px;
	background-color: #ffffff;
}

#f {
	position: absolute;
	margin-left: 200px;
	top: 50px;
	width: 10px;
	text-decoration: none;
	font-family: 'Nanum Myeongjo';
	color: #81725F;
	font-size: 45px;
}

#m {
	position: absolute;
	margin-left: 500px;
	top: 50px;
	width: 1100px;
	text-decoration: none;
	font-family: 'Nanum Myeongjo';
	color: #81725F;
}
</style>
</head>
<body>
	<div class="facility">

		<%@ include file="sidebar.jsp"%>
		<div id="f">NOTICE</div>

		<div id="m">
			<a href="layout.jsp">Home</a> > <a href="notice.jsp">ABOUT HOTEL</a>
			> NOTICE
			<h1>NOTICE</h1>
			<form method="post" action="noticeInsert.do"
				enctype="multipart/form-data">
				<table border="0" width="700" height="300">

					<tr>
						<td align="center">작성자</td>
						<td><input type="text" name="writer" value =<%= loginId %> readonly></td>
					</tr>
					<tr>
						<td colspan=2><hr></td>
					</tr>
					<tr>
						<td colspan="1" align="center">글제목</td>
						<td><input type="text" name="title" size="74"></td>
					</tr>
					<tr>
						<td colspan=2><hr></td>
					</tr>
					<tr>
						<td colspan="1" align="center">글내용<br>&<br>이미지
						</td>
						<td><textarea rows="30" cols="73" name="content"></textarea>
						</td>
					</tr>

					<tr>
						<td colspan="2" align="right"><input type="file"
							name="filename"></td>
					</tr>
					<tr>
						<td colspan=2><hr></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="입&nbsp;&nbsp; 력">&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="reset" value="취&nbsp;&nbsp; 소"></td>
					</tr>

				</table>
			</form>
		</div>
	</div>
<%@ include file="bottom.jsp"%>
</body>
</html>