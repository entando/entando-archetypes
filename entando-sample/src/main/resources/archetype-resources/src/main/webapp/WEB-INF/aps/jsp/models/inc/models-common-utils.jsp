<%@ taglib prefix="wp" uri="/aps-core" %>
<%-- css --%>
<wp:outputHeadInfo type="CSS">
    <link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
</wp:outputHeadInfo>

<%-- css --%>
<wp:outputHeadInfo type="CSS_EXT">
    <link rel="stylesheet" type="text/css" href="<wp:printHeadInfo />" />
</wp:outputHeadInfo>

<%-- css for ie7 --%>
<wp:outputHeadInfo type="CSS_IE7">
    <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
    <![endif]-->
</wp:outputHeadInfo>

<%-- css for ie8 --%>
<wp:outputHeadInfo type="CSS_IE8">
    <!--[if IE 8]>
            <link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
    <![endif]-->
</wp:outputHeadInfo>

<%-- js global vars --%>
<wp:outputHeadInfo type="JS_VARS">
    <script>
    <!--//--><![CDATA[//><!--
        <wp:printHeadInfo />
        //--><!]]>
    </script>
</wp:outputHeadInfo>

<%-- js scripts (remember to include the libraries first) --%>
<wp:outputHeadInfo type="JS">
    <script src="<wp:resourceURL />static/js/<wp:printHeadInfo />"></script>
</wp:outputHeadInfo>

<%-- external/CDN js scripts (remember to include the libraries first) --%>
<wp:outputHeadInfo type="JS_EXT">
    <script src="<wp:printHeadInfo />"></script>
</wp:outputHeadInfo>

<%-- js code --%>
<wp:outputHeadInfo type="JS_RAW">
    <script>
    <!--//--><![CDATA[//><!--
        <wp:printHeadInfo />
        //--><!]]>
    </script>
</wp:outputHeadInfo>