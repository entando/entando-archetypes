if oc project ${openshiftProject}; then
  echo "Welcome to ${openshiftProject}";
else
  oc new-project ${openshiftProject};
fi;
rm overlays -rf
mvn clean process-resources fabric8:build fabric8:resource fabric8:apply -Ppostgresql -DskipTests
