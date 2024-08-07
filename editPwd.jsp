<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String uid = (String) request.getAttribute("uid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>암호 변경</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script type="text/javascript">
   $(function() {
      console.log('jQuery ready!');
   });
   
   function updatePwd() {
      let cmd = $('#cmd').val();  //document.querySelector('#cmd').value
      let uid = $('#uid').val();
      let pwd = $('#newPwd').val();

      let obj = {};  // JSON 표현식
      obj.cmd = cmd;
      obj.uid = uid;
      obj.pwd = pwd;
      
      // 비동기 자바스크립트 요청(응답을 변수에 저장할 수 있다)
      $.ajax({  //어떤 서버에 어떤 데이터를 전송하고 응답은 어떤 변수에 받겠다
         url : 'user',
         method:'post',
         cache : false,
         data:obj,
         dataType:'json',
         success:function(res){
            alert(res.updated ? '변경 성공':'변경 실패');
         },
         error:function(xhr,status,err){
            alert('에러:' + err);
         }
      });   
      
      return false;
   }
</script>
</head>
<body>
<main>
<h3>암호 변경</h3>
<div>아이디 <%=uid%></div>
<form action="user" method="post" onsubmit="return updatePwd();">
   <input type="hidden" name="cmd" id="cmd" value="updatePwd">
   <input type="hidden" name="uid" id="uid" value="<%=uid%>">
   <div>새 암호 <input type="password" name="newPwd" id="newPwd"></div>
   <div>
      <button type="reset">취소</button>
      <button type="submit">저장</button>
   </div>
</form>
</main>
</body>
</html>