# README

Gstreamer\_livesource is the source to a container to be used with [https://github.com/cstradtman/gstreamer\_webserver](https://github.com/cstradtman/gstreamer_webserver).  This container provides a live video source that is then served by the web server int gstreamer\_webserver.  It’s and example of a service being used for a build your own low cost kubernetes demo found at https://kube-demo.chrisstradtman.com/

# Files

* ./Dockerfile \- simple docker file based on ubuntu with the addition of the gstreamer plugins needed for the demonstration source  
* ./gstream \- simple bash script that runs the gstreamer commands that create the live video stream  
* ./README.md  
* ./.github/workflows/docker-publish.yml \- canned workflow script that generates the container housed at the ghcr.io docker container repo.




