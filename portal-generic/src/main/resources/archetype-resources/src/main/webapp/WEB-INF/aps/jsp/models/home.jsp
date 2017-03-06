<%@ taglib prefix="wp" uri="/aps-core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-us" class="login-pf">
    <head>
        <title>Entando - Welcome</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="<wp:resourceURL />administration/img/favicon-entando.png">
        <jsp:include page="/WEB-INF/apsadmin/jsp/common/inc/header-include.jsp" />
    </head>
    <body>
        <div>
            <span id="badge">
                <img class="logo-entando-login" src="<wp:resourceURL />administration/img/entando-logo.svg" />
            </span>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="brand">
                            <p class="ux_brand"><strong>ENTANDO &nbsp;</strong>version <wp:info key="systemParam" paramName="version" /> successfully installed.</p>
                        </div>
                    </div>
                    <div class="col-sm-7 col-md-6 col-lg-5 login">
                        <p>
                            If you can see this page, then the people who own this host have just installed <strong>Entando</strong> successfully.<br/>
                            They now have to replace this placeholder page or just its contents.
                        </p>
                        <p>
                            You can go to the login form
                            and use the following to enter in the Administration Area.
                        </p>
                        <div class="form-group">
                            <div class="col-xs-8 col-sm-8 col-md-8">
                                <p class="entando-installed">
                                    Username: <strong>admin</strong><br>
                                        Password: <strong>adminadmin</strong>
                                </p>
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4 submit">     
                                <div class="blank-slate-pf-main-action">
                                    <a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/login.action" class="btn btn-primary btn-lg">Go to log in page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5 col-md-6 col-lg-7 details">
                        <h3 class="entando-installed-right-side">Useful links:</h3><br>
                        <ul>
                            <li><a href="http://www.entando.com">Home of the <strong>Entando</strong> project</a></li>
                            <li><a href="http://github.com/entando/">Source code and online docs at GitHub</a></li>
                            <li><a href="http://sourceforge.net/projects/japs"><strong>Entando</strong> at SourceForge</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>