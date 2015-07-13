<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Login | E-Shopper</title>
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap.min.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/font-awesome.min.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/prettyPhoto.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/price-range.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/animate.css" />'>
<link rel="stylesheet" href='<c:url value="/resources/css/main.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/css/responsive.css" />'>
<link rel="stylesheet"
	href='<c:url value="/resources/bootstrap3-dialog/css/bootstrap-dialog.css"/>'>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<%--  <link  rel="shortcut icon" href='<c:url value="/resources/images/ico/favicon.ico" />'> --%>
<%--     <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />'>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />'>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />'>
    <link rel="apple-touch-icon-precomposed" href='<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />'>  --%>
</head>
</head>
<body>

	<script type="text/javascript">
		function showAlert(message, title) {

			if (!title) {

				title = "Message";
			}

			BootstrapDialog.show({
				title : title,
				message : message,
				buttons : [ {
					label : 'Ok',
					action : function(dialog) {
						dialog.close();
					}
				} ]
			});

		}
	</script>


	<script type="text/javascript"
		src='<c:url value="/resources/js/jquery.js" />'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/price-range.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/jquery.scrollUp.min.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/bootstrap.min.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/jquery.prettyPhoto.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/main.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/bootstrap3-dialog/js/bootstrap-dialog.js"/>'></script>
</body>
</html>