<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ArtistCommentC">
		<input hidden name="artistId" value="${artist.id}">
		<textarea name="txt"></textarea>
		<button>전송</button>
	</form>
</body>
</html>