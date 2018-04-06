<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Hierarchy view component</title>

    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree-view.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/orgTree.css">
</head>
<body>
	  <!--Management Hierarchy-->
    <section class="management-hierarchy">
      
        <h1> �׸�����Ʈ /������</h1>
                  
        <div style="text-align:right;">   
       		<button class="w3-button w3-white w3-border w3-round-large" onclick="location.href='insa'">�� ����</button>
        </div> 
              
        <div class="hv-container">
            <div class="hv-wrapper">

                <!-- Key component -->
                <div class="hv-item">

                    <div class="hv-item-parent">
                        <div class="person">
                            <img src="${pageContext.servletContext.contextPath}/resources/images/3.png">
                            <p class="name">
                                	��ǥ <b>/ CEO</b>
                            </p>
                        </div>
                    </div>

                    <div class="hv-item-children">

                        <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        
                                        <p class="name">
                                         	�濵�����μ�
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                              <img src="${pageContext.servletContext.contextPath}/resources/images/4.jpg">
                                            <p class="name">
                                  		             �λ��� <br> <b>/ Personnel Team</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                             <img src="${pageContext.servletContext.contextPath}/resources/images/5.jpg">
                                            <p class="name">
                                                	ȸ����  <br><b>/ Accounting Team</b>
                                            </p>
                                        </div>
                                    </div>

                                    <div class="hv-item-child">
                                        <div class="person">
                                             <img src="${pageContext.servletContext.contextPath}/resources/images/6.png">
                                            <p class="name">
                                                	�������� <br><b>/  Customer Management Team</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>


                        <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        <p class="name">
                                          	���ߺμ�
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                         <img src="${pageContext.servletContext.contextPath}/resources/images/7.jpg">
                                            <p class="name">
                                                	����1�� <br><b>/ Back-end</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                          <img src="${pageContext.servletContext.contextPath}/resources/images/11.jpg">
                                            <p class="name">
                                                	����2�� <br><b>/ Back-end</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                        
                              <div class="hv-item-child">
                            <!-- Key component -->
                            <div class="hv-item">

                                <div class="hv-item-parent">
                                    <div class="person">
                                        <p class="name">
                                            	�����κμ�
                                        </p>
                                    </div>
                                </div>

                                <div class="hv-item-children">

                                    <div class="hv-item-child">
                                        <div class="person">
                                            <img src="${pageContext.servletContext.contextPath}/resources/images/15.png">
                                            <p class="name">
                                                	������1�� <br><b>/ Front-end</b>
                                            </p>
                                        </div>
                                    </div>


                                    <div class="hv-item-child">
                                        <div class="person">
                                            <img src="${pageContext.servletContext.contextPath}/resources/images/13.png">
                                            <p class="name">
                                                	������2�� <br><b>/ Front-end</b>
                                            </p>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>
   
    </section>
</body>
</html>