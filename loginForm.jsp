<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<style type="text/css">
	#main {width:fit-content;  margin:0.5em auto; padding:1em;} 
	form { border:1px solid black; padding:0.5em;}
	h3 {text-align:center;}
	div:last-child{margin-top:0.3em; text-align:center; }
	label {display:inline-block; width:3em;}
</style>
<script type ="text/javascript">
	function formCheck(){
		var uid = document.querySelector("#uid").value;	//Document Object Model(DOM)
		var pwd = document.querySelector("#pwd").value;
		if(uid==""||pwd==""){
			alert('아이디, 암호를 확인해주세요');
			return false;
		}
		return true;
	}

</script>
</head>
<body>
<div id="main">
	<h3>로그인</h3>
	<form action="user" method="post" onsubmit="return formCheck();">
		<input type="hidden" name ="cmd" value="login">
		<div><lable for="uid">아이디 </label>
			<input type="text" name="uid" id="uid">			<!-- 이름이 같아야 라벨과 같다 -->
		</div>
		<div><lable for="pwd">암호 </label>
			<input type="password" name="pwd" id="pwd">			<!-- 이름이 같아야 라벨과 같다 -->
		</div>
		<div>
			<button type="reset">취소</button>
			<button type="submit">로그인</button>	<!-- 폼을 전송, 서버로 넘어가 -->
			
		</div>
	</form>
</div>
</body>
</html>