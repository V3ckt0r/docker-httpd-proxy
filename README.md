# docker-httpd-proxy

Hi all, 

So this image is just supposed to provide an example of how Docker can be used to set up httpd with vhosts.

To build: Copy the sources down and do the build:

<b> docker build –rm -t <username>/httpd-proxy . </b>

My example used ports 80 and 81, so to run do:

<b> docker run -d -p 80-81:80-81 <username>/httpd </b>

You can check to see its running via:

<b> docker ps </b>

To test:

<b> curl http://localhost </b>

<b> curl http://localhost:81 </b>
