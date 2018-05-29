#Overview
This project sets up a set of Docker images for execution in Openshift.
#Instructions:
Please follow these instructions carefully and in the correct sequence. We also advise you to follow the 
progress of deployments on the Openshift browser console and only progress to the next step once the newly instantiated
pod is in a READY state.
1. Install and start Minishift following the instructions at <https://docs.openshift.org/latest/minishift/getting-started/installing.html>
2. Open a terminal session and log into your local Minishift cluster using the oc login command.
3. Specify the Openshift project you want to use by modifying src/main/filters/filter-openshift.properties
and setting the **profile.openshift.project** property.
4. Pull the images by executing ./pull_images.sh. This could take a 
while - have some coffee. Some of the images are large, but optimized for the final 
deployment layer to be as thin as possible. Also note that it will point your Docker client to the
Docker Host running inside Minishift for the terminal session.
5. Prepare the Postgresql 95 Database by executing ./build_and_deploy_db.sh. 
This will run the postgresql profile in Maven and produce a Postgresql image with
two databases ready for use from Entando. The following properties in  
src/main/filters/filter-openshift.properties can be used to control the resulting 
database:
     * **profile.database.name.portdb**: Name of the Entando PORT database
     * **profile.database.name.servdb**: Name of the Entando SERV database 
     * **profile.database.username**: The username of the Postgresql user that can be used to create tables in the databases 
     * **profile.database.password**: The password of the abovementioned Postgresql user
6. Build the Wildfly 12 image that contains the WAR file using ./build_and_deploy_app.sh. 
7. Deploy the two ReactJS apps, app-builder and mapp-engine-admin-app, and point them to 
the Wildfly service by executing ./deploy_wabapps.sh. 
8. From the Openshift browser console, list the routes and then navigate the links that point to the 
web-apps. Ufnortunately, due to some challenges we face making Entando work with ReactJS, these apps 
need to be compiled when the containers start up. Please be patient and wait for their services to 
become available. 
