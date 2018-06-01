source set_openshift_project.sh
ENTANDO_SERVICE_URL=$(oc describe route ${artifactId}-service|grep -oP "(?<=Requested\sHost:\t\t)[^ ]+")
ENTANDO_VERSION=5.0.0
oc new-app --name ${artifactId}-mapp-engine-admin-app --docker-image entando/mapp-engine-admin-app-openshift:$ENTANDO_VERSION -e USE_MOCKS=false -e DOMAIN=$ENTANDO_SERVICE_URL
oc expose svc ${artifactId}-mapp-engine-admin-app
oc new-app --name ${artifactId}-app-builder --docker-image entando/app-builder-openshift:$ENTANDO_VERSION -e USE_MOCKS=false -e DOMAIN=$ENTANDO_SERVICE_URL
oc expose svc ${artifactId}-app-builder
