<%@ taglib prefix="wp" uri="/aps-core" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title>
			<wp:currentPage param="title" /> - Entando
		</title>
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="<wp:resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
		<![endif]-->

		<jsp:include page="inc/lesscss-active/lesscss.jsp" />
		<jsp:include page="inc/models-common-utils.jsp" />

	</head>
	<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#"><img src="<wp:imgURL />entando-logo.png" alt="Entando - Simplifying Enterprise Portals" /></a>
					<ul class="nav">
						<li><a href="http://www.entando.com">Home of Entando</a></li>
						<li class="divider-vertical"></li>
						<li><a href="http://github.com/entando/">Source code and online docs at GitHub</a></li>
						<li class="divider-vertical"></li>
						<li><a href="http://sourceforge.net/projects/japs">Entando at SourceForge</a></li>
					</ul>
			</div>
		</div>
	</div>

	<div class="container">

	<!-- START WELCOME -->
	<h1>It Worked!<br /> <strong>Entando</strong> is installed on this host.</h1>
	<h2 class="lead">Version <wp:info key="systemParam" paramName="version" /></h2>

	<p>
		If you can see this page, then the people who own this host have just installed <strong>Entando</strong> successfully.<br/>
		They now have to replace this placeholder page or just its contents.
	</p>

	<div class="row">

		<div class="well span7 text-center margin-medium-vertical">

			<h2>Access to the Administration Area</h2>

			<p>
				The built-in administrator user is <strong>admin</strong>:
			</p>

			<p class="margin-medium-vertical">
				<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/doLogin.action?username=admin&amp;password=adminadmin&amp;backend_client_gui=advanced" class="btn btn-primary btn-large"><i class="icon-user icon-white"></i>&#32;Enter as admin</a>
			</p>

			<p>
				The following are its credentials:<br />
				Username: <strong>admin</strong> / Password: <strong>adminadmin</strong>
			</p>

		</div>

	</div>

	<div class="row">

		<p class="well span7 text-center margin-medium-bottom">
			Also, you don't likely want to miss the guide which could help you<br />
			<a class="btn btn-success" href="https://github.com/entando/Entando/wiki/Entando%3A-an-unexpected-journey"><i class="icon-file icon-white"></i>&#32;Getting started with your own portal</a>
		</p>

	</div>

	<p>
	Have a good time with <strong>Entando</strong>!<br />
	- The Team -
	</p>

	<!-- END WELCOME -->

	</div>

  </body>
</html>
