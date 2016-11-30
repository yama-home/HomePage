<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menuTop.jsp" %>

<script type="text/javascript">
var msg = "${msg}";

$(document).ready(function() {
	$("#certifyResult").html(msg);
});
</script>
<div class="container-fluid text-center">
	<div class="row content">
		<div class="col-sm-8 text-left">
			<p id="certifyResult"></p>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp" %>