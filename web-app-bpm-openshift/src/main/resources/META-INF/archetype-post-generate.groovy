def file = new File( request.getOutputDirectory(), request.getArtifactId()+"/build_and_deploy_db.sh" );
file.setExecutable(true, false);
file = new File( request.getOutputDirectory(), request.getArtifactId()+"/build_and_deploy_app.sh" );
file.setExecutable(true, false);