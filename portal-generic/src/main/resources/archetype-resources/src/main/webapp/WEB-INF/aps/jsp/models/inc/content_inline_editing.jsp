<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/jpkiebpm-aps-core" prefix="jpkie" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jquery-ui-1.10.1.custom.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jqueryui-editable.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jquery-ui-1.10.1.custom.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jqueryui-editable.css" media="screen"/>

<!-----------inclusione x-editable inline------------------------>
<wp:ifauthorized permission="superuser">
    <script>
        $(function () {
            setTimeout(function () {
                //toggle `popup` / `inline` mode
                $.fn.editable.defaults.mode = 'inline';
                $('.editLabel').editable({
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
                //make status editable
                $('.editLabelText').editable({
                    type: 'textarea',
                    rows: 10,
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
            }, 500);
        });
    </script>
</wp:ifauthorized>

<!-----------END inclusione x-editable inline------------------------>
