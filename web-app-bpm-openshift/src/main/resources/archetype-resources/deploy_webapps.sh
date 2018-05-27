oc new-app --name entando-microengine --docker-image ampie/entando-microengine:5.0.0-SNAPSHOT -e USE_MOCKS=false -e DOMAIN=$(oc describe route sample-service|grep -oP "(?<=Requested\sHost:\t\t)[^ ]+")
oc expose svc entando-microengine
oc new-app --name entando-appbuilder --docker-image ampie/entando-appbuilder:5.0.0-SNAPSHOT -e USE_MOCKS=false -e DOMAIN=$(oc describe route sample-service|grep -oP "(?<=Requested\sHost:\t\t)[^ ]+")
oc expose svc entando-appbuilder