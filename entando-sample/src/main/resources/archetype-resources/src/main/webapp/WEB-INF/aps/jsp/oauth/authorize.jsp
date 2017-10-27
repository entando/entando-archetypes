<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title>
			Entando - OAuth Sign In
		</title>
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="<wp:resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
		<![endif]-->

		<jsp:include page="/WEB-INF/aps/jsp/models/inc/lesscss-active/lesscss.jsp" />

	</head>
	<body>

	<div class="container">

	<div class="row">
		<div class="span6 offset3">

			<h1 class="margin-medium-vertical"><c:out value="${oauthParam_CONSUMER_DESCRIPTION}" />&#32;<small>is requesting to access your information.</small></h1>
			
			<c:if test="${oauthParam_INVALID_CREDENTIALS}" >
				<div id="actionErrorsBox" class="alert alert-error">
					<h2 class="alert-heading">Error:</h2>
					<p>Invalid credentials.</p>
				</div>
			</c:if>
			
		<c:if test="${null != sessionScope.currentUser && sessionScope.currentUser != 'guest'}">
			<form action="<wp:info key="systemParam" paramName="applicationBaseURL" />OAuth/authorize" method="post" class="text-center well">
			<p><wp:i18n key="WELCOME" />, <em><c:out value="${sessionScope.currentUser}"/></em>!</p>
			<p>
				<input type="hidden" name="loggedUser" value="true" />
				<input type="hidden" name="oauth_token" value="<c:out value="${oauthParam_REQUEST_TOKEN}" />" />
				<input type="hidden" name="oauth_callback" value="<c:out value="${oauthParam_CALLBACK_URL}" />" />
				<input class="btn btn-large btn-primary" type="submit" name="Authorize" value="Continue" />
			</p>
			</form>
			<p class="margin-medium-vertical text-center">
				or sign in as a different user:
			</p>
			</c:if>

			<form class="well form-horizontal" action="<wp:info key="systemParam" paramName="applicationBaseURL" />OAuth/authorize" method="post">
				<div class="control-group">
					<label class="control-label noscreen" for="username"><wp:i18n key="USERNAME" /></label>
					<div class="controls">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-user"></i></span><input type="text" name="username" id="username" class="input-large" value="<c:out value="${oauthParam_USERNAME}" />" placeholder="<wp:i18n key="USERNAME" />" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label noscreen" for="password"><wp:i18n key="PASSWORD" /></label>
					<div class="controls">
						<div class="input-prepend">
							<span class="add-on"><i class="icon-lock"></i></span><input type="password" name="password" id="password" class="input-large" placeholder="<wp:i18n key="PASSWORD" />" />
						</div>
					</div>
				</div>
					<input type="hidden" name="oauth_token" value="<c:out value="${oauthParam_REQUEST_TOKEN}" />" />
					<input type="hidden" name="oauth_callback" value="<c:out value="${oauthParam_CALLBACK_URL}" />" />
				<div class="form-actions">
					<input class="btn btn-primary" type="submit" name="Authorize" value="Authorize"/>
				</div>
			</form>
		</div>
	</div>

  </body>
</html>