<%@taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title> BookingManagement </title>

		<c:url value="/" var="baseUrl" />
		<c:set value="${fn:length(baseUrl)}" var="baseUrlLen" />
		<c:set var="baseUrl" value="${fn:substring(baseUrl, 0, baseUrlLen - 1)}"/>
		
    	<link rel="stylesheet" type="text/css" media="all" href="${baseUrl}/resources/bootstrap/css/bootstrap.css"/>
    	<link rel="stylesheet" type="text/css" media="all" href="${baseUrl}/resources/bootstrap/css/bootstrap-responsive.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${baseUrl}/resources/style.css"/>
		<script type="text/javascript" src="${baseUrl}/resources/project.js" ></script>
		<script type="text/javascript" src="${baseUrl}/resources/jquery-3.5.1.js" ></script>
		<script type="text/javascript" src="${baseUrl}/resources/jquery.form.min.js" ></script>
		
		<script type="text/javascript">
			$(function() {
		       $('#submitForm').ajaxForm(function() {
		           alert("Thank you for your comment!");
		       });
		  });
		</script>
		
</head>
<body>
		<div class="container">
		  <h2>Conference Room Booking Schedule</h2>
		  <form class="form-horizontal" id="submitForm" action="submitSchedule" method="post">
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="Title">Tile:</label>
		      <div class="col-sm-10">
		        <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="duration">Duration(in minutes):</label>
		      <div class="col-sm-10">          
		        <input type="text" class="form-control" id="duration" placeholder="Enter duration" name="duration">
		      </div>
		    </div>
		    <div class="form-group">        
		      <div class="col-sm-offset-2 col-sm-10">
		        <input type="submit"  class="btn btn-primary" id="submitSch"  value="Submit">
		      </div>
		    </div>
		  </form>
		</div>
		<script type="text/javascript">
		
		
		</script>
</body>
</html>