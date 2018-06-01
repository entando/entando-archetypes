OPENSHIFT_PROJECT=$(cat src/main/filters/filter-openshift.properties | grep "profile.openshift.project=" | cut -d'=' -f2)
if oc project ${OPENSHIFT_PROJECT}; then
  echo "Welcome to ${OPENSHIFT_PROJECT}";
else
  oc new-project ${OPENSHIFT_PROJECT};
fi;