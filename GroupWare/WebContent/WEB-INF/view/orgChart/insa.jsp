<!DOCTYPE html>
<html>
	<title>W3.CSS</title>
	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	    pageEncoding="EUC-KR"%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
<body>

 <div class="w3-container" style="margin: 40px 100px;">
<h2 style="text-align: center;">�� ����</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
	<col width="10%">	<!-- ��� -->
	<col width="10%">	<!-- �μ� -->
	<col width="10%">	<!-- �� -->
	<col width="10%">	<!-- �̸� -->
	<col width="10%">	<!-- ���� -->
	<col width="20%">	<!-- �系��ȣ -->
	<col width="20%">	<!-- �̸��� -->
	<col width="10%">	<!-- ���� -->
   <thead>
      <tr class="w3-yellow">
      	 <th>���</th><!-- emnum  -->
    	 <th>�μ�</th>  <!-- dnum -->
    	 <th>��</th>  <!-- dnum -->
		 <th>�̸�</th><!-- name -->
		 <th>����</th><!-- position -->
		 <th>�系��ȣ</th><!-- tel -->
		 <th>�̸���</th><!-- email -->
		 <th>����</th><!-- V -->
      </tr>
   </thead>
   <c:forEach var="li" items="${articleList}">
       <tr>
         <td>${li.emnum}</td><!-- ��� -->
         <td>${li.dname}</td><!-- �μ� -->
         <td>${li.tname}</td><!-- �� -->
         <td><a href="#" onclick="document.getElementById('id01').style.display='block'">${li.name}</a></td><!-- �̸� -->
         <td>${li.position}</td><!-- ���� -->
         <td>${li.tel}</td><!-- �系��ȣ -->
         <td>${li.email}</td><!-- �̸��� -->
         <td>&nbsp;&nbsp;V</td><!-- ���� -->
       </tr>
   </c:forEach>       
</table>
</div>

<!-- �ϴ� ������ -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
   <c:if test="${startPage > bottomLine }">
      <a href="insa?pageNum=${startPage - bottomLine}">[����]</a> 
   </c:if>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">   
      <a href="insa?pageNum=${i}">
   <c:if test="${i !=  currentPage}">[${i}]</c:if>
   <c:if test="${i ==  currentPage}">
      <font color='red'>[${i}]</font></c:if></a>
   </c:forEach>
   
   <c:if test="${endPage < pageCount}">
      <a href="insa?pageNum=${startPage+bottomLine}">[����]</a>
   </c:if>   
</c:if>
</div><br>

<!-- ȸ�� �˻� -->
<form name ="search" method="post" style="text-align: center;">
   <select name="keyField" style="height: 30px;">
      <option>����</option>
      <option value="">�μ�</option>
      <option value="m_id">��</option>
      <option value="m_name">�̸�</option>
   </select>
   <input type="text" size="20" name="keyWord">
   <input type="button" value="�˻�" onclick="mem_search(form)" />&nbsp;
</form>
 

		<!-- ��� ���� ���� ��� -->
		<div class="w3-container">
		
			<div id="id01" class="w3-modal">
				<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
					<div class="w3-center"><br>
		  				<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		     		</div>
		      
					<div class="w3-container w3-text-blue w3-margin">
						<h2 class="w3-center"> �� ����</h2>
		
						<div class="w3-row w3-section">
				  			<div class="w3-col" style="width:50px">
				  				<i class="w3-xxlarge fa fa-user"></i>
				  			</div>
		   					 <div class="w3-rest">
		     					 <input class="w3-input w3-border" name="first" type="text" placeholder="${name}" readonly="readonly">
		   					 </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						 	 <i class="w3-xxlarge fa fa-bookmark"></i>
						  </div>
						  <div class="w3-rest">
						      <input class="w3-input w3-border" name="last" type="text" placeholder="���" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-group"></i>
						  </div>
						  <div class="w3-rest">
						  	<input class="w3-input w3-border" name="last" type="text" placeholder="�λ���" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-phone"></i>
						  </div>
						    <div class="w3-rest">
						      <input class="w3-input w3-border" name="phone" type="text" placeholder="02)2601-7551" readonly="readonly">
						    </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-tablet"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="phone" type="text" placeholder="010-5124-0316" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-envelope-o"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="email" type="text" placeholder="hee@gmail.com" readonly="readonly">
						  </div>
						</div>
		
						<div class="w3-row w3-section">
						  <div class="w3-col" style="width:50px">
						  	<i class="w3-xxlarge fa fa-commenting"></i>
						  </div>
						  <div class="w3-rest">
						    <input class="w3-input w3-border" name="message" type="text" placeholder="����������" readonly="readonly">
						  </div>
						</div>
		
						<p class="w3-center">
							<button class="w3-button w3-section w3-blue w3-ripple" onclick="document.getElementById('id01').style.display='none'"> Ȯ�� </button>
						</p>
					</div>
		  		  </div>
		 	 </div>
		</div>
</body>
</html>