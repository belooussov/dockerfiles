Cloudtop
========

Everything is in the cloud. Your desktop too!
You can use RDP to connect to a desktop which has support for sound and OpenGL (CPU renderer).
The image includes a working version of Firefox.

Cloudtop is based on the following technologies:

* rdesktop
* xserver-xorg-video-dummy
* VirtualGL
* X11rdp

How to run
----------

Checkout this repository and execute the following commands:

1st terminal::

   make build
   make run

2nd terminal::

   make cloudtop

The build command is optional as the image is also uploaded to the Docker hub.
https://hub.docker.com/r/ecno92/cloudtop/

Tested on Ubuntu 16.04 and 17.04

Final remarks
-------------

This project is not production ready. I've invested a few evenings to get this running in various different ways.
After a while I abandoned the project. That's why I left it on Github.

Special thanks to Maxim for realizing this idea even before I was able to do it:
https://github.com/belooussov/devtop
