<%@ taglib prefix="wp" uri="/aps-core" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">
    <head>
        <title>Entando - Welcome</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="<wp:resourceURL />administration/img/favicon-entando.png">

        <!--CSS inclusions-->
        <link rel="stylesheet" href="<wp:resourceURL />administration/bootstrap/css/bootstrap.min.css" media="screen" />
        <link rel="stylesheet" href="<wp:resourceURL />administration/css/entando-admin-console-default-theme.css">
        <!--JS inclusions-->
        <script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
        <script src="<wp:resourceURL />administration/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body id="background-full-landing">

        <div class="container center-pos" >
            <div class="logo-entando-top">
                <img class="logo-entando-login" src="<wp:resourceURL />administration/img/entando-logo.svg" />
            </div>
            <div class="ux_brand_subtitle-lp">THE ENTANDO <wp:info key="systemParam" paramName="version" /></div>
            <div class="ux_brand-lp">HAS BEEN SUCCESSFULLY INSTALLED</div>
            <div class="spacer-login-lp"></div>

            <div class="entando-intro">
                If you can see this page, then the people who own this host have just installed <strong>Entando</strong> successfully.<br/>
                They now have to replace this placeholder page or just its contents.
            </div>
            <div class="spacer-landing"></div>
            <div class="entando-intro">
                You can go to the login form and use the following credentials to Enter the Administration Area
            </div>

            <div class="entando-intro">
                Username: <strong>admin</strong> <br /> Password: <strong>adminadmin</strong>
            </div>

            <div class="login-buttons-lp">
                <a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/login" class="btn btn-login">
                    GO TO LOG IN PAGE
                </a>
            </div>

            <div id="social-link">
                <a href="http://www.entando.com" target="_blank"><img src="<wp:resourceURL />administration/img/entando_icon.png"></a>
                <a href="http://github.com/entando/" target="_blank"><img src="<wp:resourceURL />administration/img/github.png"></a>
                <a href="https://twitter.com/entando" target="_blank"><img src="<wp:resourceURL />administration/img/twitter.png"></a>
            </div>
        </div>
        <div id="bottom-footer">
            <div class="copyright-entando">Copyright 2017 <span class="entando-sm-write">Entando</span></div>
        </div>
    </body>
</html>
