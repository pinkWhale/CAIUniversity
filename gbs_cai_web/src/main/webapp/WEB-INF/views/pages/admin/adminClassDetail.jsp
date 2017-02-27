<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin Class Detail</title>
</head>
<body>

<c:set var="UPLOADED_FOLDER" scope="session" value="file:///C:/temp/"/>

<table>
<tr><td>클래스ID: ${vo.class_id}</td><td colspan="2">수업제목: ${vo.title}</td></tr>
<tr><td>강사: ${vo.teacher}</td><td>부스: ${vo.booth}</td><td>수용인원 ${vo.capacity}</td></tr>
<tr><td>날짜 . .: ${vo.date}</td><td colspan="2">시간: ${vo.start}-${vo.end}</td></tr>
<tr><td colspan="3">${vo.detail}</td></tr>
</table>
<br>

image: <a href="/gbs_cai_web/download?fileName=${vo.image}">${vo.image}</a> <br>
files: <a href="/gbs_cai_web/download?fileName=${vo.atta1}">${vo.atta1}</a> <br>
<a href="/gbs_cai_web/download?fileName=${vo.atta2}">${vo.atta2}</a> <br>
<a href="/gbs_cai_web/download?fileName=${vo.atta3}">${vo.atta3}</a> <br>

<a href="/gbs_cai_web/modifyClassView?idx=${vo.idx}">수정</a> | <a href="/gbs_cai_web/adminClass">목록보기</a>


</body>
</html>