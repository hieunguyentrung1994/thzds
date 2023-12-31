<%--
  Created by IntelliJ IDEA.
  User: binh1
  Date: 8/14/2023
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    table {
        border: 1px solid #000;
    }
    th, td {
        border: 1px dotted #555;
    }
</style>
There are ${requestScope.customers.size()} customer(s) in list.
<table>
	<caption>Customers List</caption>
	<thead>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="c" items="${requestScope.customers}">
		<tr>
			<td>
				<c:out value="${c.id}"/>
			</td>
			<td>
				<a href="detail/${c.getId()}">Detail</a>
			</td>
			<td>
				<c:out value="${c.email}"/>
			</td>
			<td>
				<c:out value="${c.address}"/>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
