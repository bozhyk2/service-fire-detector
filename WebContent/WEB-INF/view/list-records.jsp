<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><title>List Records</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2> Candy - Service fire detector</h2>
		</div>
   	</div>
   	<div id="container">
		<div id="context">
			<table>
			<tr>
			    <th>ID</th>
				<th>Date</th>
				<th>Detector Name</th>
				<th>Global Type of Reason</th> 
				<th>Reason</th>
			</tr>
			<c:forEach var="tmpRecord" items ="${records}">
			  <tr>
			    <td>${tmpRecord.id}</td>
			    <td>${tmpRecord.stringDate}</td>
				<td>${tmpRecord.detectorName.name}</td>
				<td>${tmpRecord.globalReason}</td> 
				<td>${tmpRecord.simpleReason}</td>
			  </tr>
			</c:forEach>
			</table>	
				  
		</div>
   	</div>
   			
</body>
</html>