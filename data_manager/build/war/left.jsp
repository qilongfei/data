<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tag.tag"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
<title>主页面左部菜单</title>
</head>
<body>
	<div class="content">
		<div class="left" style="min-height: 400px;">
			<p class="left-bgt"></p>
			<ul id="nav">
				<c:forEach items="${functionRightList }" var="fun" varStatus="stu">
					<c:if test="${fun.level == 1}">
						<li class="navxl">
							<c:if test="${fun.url == '#' }">
								<a href="#Menu=ChildMenu${stu.count }" onclick="DoMenu('ChildMenu${stu.count }')">${fun.funcName }</a>
							</c:if>
							<c:if test="${fun.url != '#' }">
								<a href="${fun.url }" target="right">${fun.funcName }</a>
							</c:if>
							<ul id="ChildMenu${stu.count }"<c:if test="${stu.count ne 1}">class="collapsed"</c:if>>
								<c:forEach items="${functionRightList }" var="fun2" varStatus="stu2">							
									<c:if test="${fun2.parentId == fun.id }">										
										<li<c:if test="${stu2.count == 1}">class="navxl"</c:if>>
											<a href="${fun2.url }" target="right">${fun2.funcName }</a>
										</li>
									</c:if>																	
								</c:forEach>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>