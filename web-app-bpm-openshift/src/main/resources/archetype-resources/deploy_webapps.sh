ENTANDO_SERVICE_URL=$(oc describe route ${artifactId}-service|grep -oP "(?<=Requested\sHost:\t\t)[^ ]+")
oc new-app --name ${artifactId}-microengine --docker-image ampie/entando-microengine:5.0.0-SNAPSHOT -e USE_MOCKS=false -e DOMAIN=ENTANDO_SERVICE_URL
oc expose svc ${artifactId}-microengine
oc new-app --name ${artifactId}-appbuilder --docker-image ampie/entando-appbuilder:5.0.0-SNAPSHOT -e USE_MOCKS=false -e DOMAIN=ENTANDO_SERVICE_URL
oc expose svc ${artifactId}-appbuilder