# ${artifactId}

This project was generated using the Entando web-app-bpm-docker archetype. Please take note of the following points 
if you intend to run this project in Docker.

1. This project uses the Fabric8 maven-docker-plugin to build the image and setup the run configuration. This plugin
 will be activated automatically when using the `docker` profile from maven, e.g. `mvn clean install -Pdocker`

2. The base image defines a volume /entando-data. In order to ensure your database changes and uploaded files are
 persisted across container restarts, we have configured the maven-docker-pluging to create a persistent local volume in Docker.
 In order to create this volume, please run the volume-create goal on the maven-docker-plugin with the `docker` profile active, 
 e.g. `mvn -Pdocker docker:volume-create

3. When using the `docker` profile, the Docker image will be built automatically in the `package` phase. If you want
 to run the image, please append the `run` goal, e.g. `mvn clean install -Pdocker docker:run
 
4. The imaged used comes with pre-built Entando databases served by Derby. This is meant exclusively for local development
 and is not intended for production. Please consult our documentation on alternative options for production.    
