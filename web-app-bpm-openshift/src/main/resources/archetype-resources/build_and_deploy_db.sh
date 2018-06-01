source set_openshift_project.sh
rm overlays -rf
mvn clean process-resources fabric8:deploy -Ppostgresql -DskipTests
