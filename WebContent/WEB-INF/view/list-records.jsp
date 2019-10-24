<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><title>List Records</title></head>
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
				<th>Date</th>
				<th>Detector Name</th>
				<th>Global Type of Reason</th> 
				<th>Reason</th>
			</tr>
			<c:forEach var="tmpRecord" items ="${records}">
			  <tr>
				<td>${tmpRecord.date}</td>
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