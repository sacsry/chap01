<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2024-04-04
  Time: 오전 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>게시판 상세</h1>
<div>
    <form name="frmDelete" id="frmDelete" method="post" action="/bbs/delete?idx=${dto.idx}">
    <div>${dto.idx}</div>
    <div>${dto.user_id}</div>
    <div>${dto.title}</div>
    <div>${dto.content}</div>
    <div>${dto.display_date}</div>
    <div>${dto.readcnt}</div>
    <div>
        <input type="submit" name="deletebtn" value="삭제">
        <button type="button" name="modifybtn" onclick="location.href='/bbs/modify?idx=${dto.idx}'">수정</button>
    </div>
    </form>
</div>
<ul>
    <li><a href="/bbs/regist">등록</a></li>
    <li><a href="/bbs/modify?idx=${dto.idx}">수정</a></li>
    <li><a href="/bbs/delete">삭제</a></li>
    <li><a href="/bbs/list">리스트</a></li>
    <li><a href="/bbs/view">상세</a></li>
</ul>
</body>
</html>
