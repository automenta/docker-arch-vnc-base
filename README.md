# ArchLinux VNCServer Firefox Fluxbox - Dockerfile

Minimal Linux setup for use as AI embodiment virtual machine 

### Create image:
docker build  -t archvnc .

### Run image (VNC unsecured on port 5901 with full internet access):
docker run --net=host archvnc

