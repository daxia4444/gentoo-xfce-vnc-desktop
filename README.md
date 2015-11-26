# gentoo-xfce-vnc-desktop
Run gentoo-xfce on docker via VNC.

[Docker hub](https://hub.docker.com/r/auronc/gentoo-xfce-vnc-desktop/)


# Build
```
git clone git@github.com:auronc/gentoo-xfce-vnc-desktop.git
cd gentoo-xfce-vnc-desktop
docker build -t="mygentoo:v1" .
```


# Usage
// docker side
```
docker run -ti -p 5900:5900 -e USER=root -v /tmp/.X11-unix:/tmp/.X11-unix mygentoo:v1
ifconfig | grep -w inet  # check <IP>
#vncpasswd
vncserver
```
```
When run 'vncserver', you'll see it below.
Watch the blue circle and let's call it <N>.
```
![vncserver](http://i.imgur.com/vLDCjlZ.jpg)


// vnc client side  
```
vncviewer <IP>:<5900+N>
ex:
  vncviewer 172.17.0.77:5902
```


# Result
![result](http://i.imgur.com/DV3Mttd.jpg)
