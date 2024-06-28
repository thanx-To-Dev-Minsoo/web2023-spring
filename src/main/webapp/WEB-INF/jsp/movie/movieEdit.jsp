<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>글 수정</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../css/default.css">
  <style>
    input[type='text'] {width:50%;}
    textarea {width:50%;}
  </style>
</head>
<body>
<%@include file="/WEB-INF/jsp/header.jsp" %>
<main>
  <h3>글 수정</h3>
  <form action="./updateMovie" method="post">
    <p><input type="text" name="title" value="${movie.titleEncoded}"
              placeholder="영화제목" required autofocus/></p>
    <p><textarea name="director" placeholder="감독"
                 required>${movie.directorEncoded}</textarea></p>
    <p>
      <button type="submit">저장</button>
    </p>
    <input type="hidden" name="movieId" value="${movie.movieId}"/>
  </form>
</main>
</body>
</html>
