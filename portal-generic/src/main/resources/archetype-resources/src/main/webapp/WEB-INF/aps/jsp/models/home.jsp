<%@ taglib prefix="wp" uri="/aps-core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>
        <wp:currentPage param="title" /> - Entando
    </title>

    <wp:outputHeadInfo type="CSS">
        <link href="<wp:resourceURL />static/css/<wp:printHeadInfo />" type="text/css" rel="stylesheet" />
    </wp:outputHeadInfo>

<style type="text/css">

html {
margin: 0;
padding: 0;
min-height: 100%;
background-color: #ffffff;
text-align: center;
background-image: url("<wp:resourceURL />static/img/grid_noise.png");
}

body {
text-align: left;
margin: 1% auto;
padding: 0 5% 1% 5%;;
min-width: 700px;
max-width: 800px;
font-size: 100.01%;
background-color: #ffffff;
border: 1px solid #DAD7D7;
color: #555555;
}

h1 {
font-size: 1.5em;
text-align: left;
margin: 1em 0 0.5em 0;
padding: 0 0 0 1em;
color: #438ad7;
border-bottom: 0.1em solid #555555;
}

h2 {
font-size: 0.9em;
}

h2.version {
font-weight: bold;
color: #555555;
text-align: left;
margin-bottom: 2em;
text-align: right;
}

p {
margin: 0.5em 0;
padding: 0;
line-height: 1.4;
}

p, li {
font-size: 0.9em;
}

li li, li p {
font-size: 1em;
}

ul {
list-style-type: square;
color: #555555;
}

li {
margin-top: 0.5em;
margin-bottom: 0.5em;
}

img.right {
float: right;
margin: 0 0 0.5em 0.5em;
}

img.logo {
-moz-box-shadow: 0 0 0 0.5em rgba(255, 255, 255, 0.2);
-webkit-box-shadow: 0 0 0 0.5em rgba(255, 255, 255, 0.2);
box-shadow: 0 0 0 0.5em rgba(255, 255, 255, 0.2);
-moz-border-radius: 8px;
-webkit-border-radius: 8px;
border-radius: 8px;
}

.clear {
clear: both;
}

a:link, a:visited {
color: #438ad7;
border-bottom: 0.1em solid #438ad7;
text-decoration: none;
}

a:hover, a:active, a:focus {
border-bottom: none;
text-decoration: none;
}

/* CSS3 */

body {
-moz-box-shadow: 3px 3px 6px 0 #aaaaaa;
-webkit-box-shadow: 3px 3px 6px 0 #aaaaaa;
box-shadow: 3px 3px 6px 0 #aaaaaa;
-moz-border-radius: 8px;
-webkit-border-radius: 8px;
border-radius: 8px;
}

h1 {
text-shadow: 0px 0px 1px rgba(0, 0, 0, 0.25);
filter: dropshadow(color=#000000, offx=1, offy=0);
}

/* END CSS3 */

</style>


<script type="text/javascript">
  WebFontConfig = {
    google: { families: [ 'Droid Sans:regular,bold', 'Droid Sans Mono', 'Molengo' ] }
  };
  (function() {
document.getElementsByTagName("html")[0].className += " wf-loading";
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
        '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })();
</script>

<style type="text/css">
.wf-loading {
visibility: hidden;
}

body {
font-family: 'Droid Sans', Helvetica, Arial, sans-serif;
}

h1, h2 {
font-family: Molengo, serif;
}

h2.version {
font-family: 'Droid Sans Mono', monospace;
}
</style>

</head>

<body>


<!-- START WELCOME -->
<h1>It Worked!<br /> <strong>Entando</strong> is Installed on this host.</h1>
<h2 class="version">Version <wp:info key="systemParam" paramName="version" /></h2>

<p>
<img class="right logo" src="<wp:imgURL />/entando-logo_badge.png" alt="" />
If you can see this page, then the people who own this host have just installed <strong>Entando</strong> successfully.<br/>
They now have to replace this placeholder page or just its contents.
</p>

<p>
You can go to the <a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/login.action">Login form</a>
and use the following to enter in the Administration Area.
</p>

<ul>
<li>Username: <strong>admin</strong></li>
<li>Password: <strong>adminadmin</strong></li>
</ul>

<p>
Have a good time with <strong>Entando</strong>!<br />
- The Team -
</p>

<h2>Links:</h2>
<ul>
<li><a href="http://www.entando.com">Home of the <strong>Entando</strong> project</a></li>
<li><a href="http://github.com/entando/">Source code and online docs at GitHub</a></li>
<li><a href="http://sourceforge.net/projects/japs"><strong>Entando</strong> at SourceForge</a></li>
</ul>
<!-- END WELCOME -->

</body>
</html>