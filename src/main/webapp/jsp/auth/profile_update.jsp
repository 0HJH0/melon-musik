<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="regWrapper">
    <form
      action="UpdateC"
      id="reg-form"
      method="post"
      enctype="multipart/form-data"
      onsubmit="return call()"
    >
      
     <div class="profile_content">
	  			<div id="profile_img">
					<img src="files/auth/${account.au_img}">
	  			</div>
	  		</div>
	  		  <div class="items" id="file-box">
        <label for="file" class="titles">Profile Image</label>
        <input hidden name="img" value="${sessionScope.account.au_img}">
        <input type="file" name="img2" id="file" accept="image/*" />
      </div>
      <div class="items" id="name-box">
        <label for="name" class="titles">Name</label>
        <input type="text" name="name" id="name" placeholder="필수입력" value="${sessionScope.account.au_name}"  />
      </div>
      <div class="items" id="id-box">
        <label for="id" class="titles">ID</label>
        <div id="id"><input hidden name="id" value="${sessionScope.account.au_id}">${sessionScope.account.au_id} </div>
      </div>
      <div class="items" id="pw-box" >
        <label for="pw" class="titles">Password</label>
        <input
          type="password"
          name="pw"
          id="pw"
          placeholder="대문자, 소문자, 숫자 포함 3자 이상"
         
        />
      </div>
      <div class="items" id="pw-confirm-box" ">
        <label for="pw-confirm" class="titles">Password Confirm</label>
        <input
          type="password"
          name="pw-confirm"
          id="pw-confirm"
          placeholder="비밀번호 확인"
        />
      </div>
      
      
      <div class="items" id="interest-box">
        <label class="titles">Interest</label>
        <div id="check-box">
          <input id="k-pop" type="checkbox" name="interest" value="k-pop" />
          <label for="k-pop" class="contents">k-pop</label>
          <input id="j-pop" type="checkbox" name="interest" value="j-pop" />
          <label for="j-pop" class="contents">j-pop</label>
          <input id="메탈" type="checkbox" name="interest" value="메탈" />
          <label for="메탈" class="contents">메탈</label>
          <input id="힙합" type="checkbox" name="interest" value="힙합" />
          <label for="힙합" class="contents">힙합</label>
        </div>
      </div>
      <div class="items" id="introduce-box">
        <label for="introduce" class="titles">Introduce</label>
        <textarea id="introduce" name="introduce" rows="5">${sessionScope.account.au_introduce}</textarea>
      </div>
      <div class="items" id="submit-box">
        <input type="submit" value="Sign Up" />
      </div>
    </form>
  	</div>
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
    <script src="js/auth/acValueCheck.js"></script>
    <script src="js/auth/acValidCheck.js"></script>
</body>
</html>