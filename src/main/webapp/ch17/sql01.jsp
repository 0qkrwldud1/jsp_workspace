<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/WebMarketDB"
		driver="com.mysql.jdbc.Driver" user="root" password="k404" />


	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from member2
	</sql:query>

	<table border="1">
		<tr>
		<!-- 테이블의 각 컬럼이름을 가져온다. -->
			<c:forEach var="columnName" items="${resultSet.columnNames}">
				<th width="100"><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${resultSet.rowsByIndex}">
		<tr>
		<!-- 행을 가져온다. -->
			<c:forEach var="column" items="${row}" varStatus="i">
			<td>
				<c:if test="${column != null}">
					<c:out value="${column}" />
				</c:if> 
				<c:if test="${column == null}">
					&nbsp;
				</c:if>
			</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
</body>
</html>