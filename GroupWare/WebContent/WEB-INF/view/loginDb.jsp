<!-- deletePro -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<c:if test="${pwcheck == 0}">
<script type="text/javascript">
alert("���̵� ��й�ȣ�� Ʋ���ϴ�!");
history.go(-1);
</script>
</c:if> 

<c:if test="${pwcheck == 1}">
	<script type="text/javascript">
	location.href = "mainBoard";
	</script>
</c:if>