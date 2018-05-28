['build_and_deploy_db.sh', 'build_and_deploy_app.sh', 'deploy_webapps.sh'].each {
    def file = new File( request.getOutputDirectory(), request.getArtifactId()+'/' + it);
            file.setExecutable(true, false);
}
