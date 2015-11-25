# gentoo-xfce-vnc-desktop
Run gentoo-xfce on docker via VNC.
[Docker hub](https://hub.docker.com/r/auronc/gentoo-xfce-vnc-desktop/)


# Build
```
git clone git@github.com:auronc/gentoo-xfce-vnc-desktop.git
docker build --rm -t auronc/gentoo-xfce-vnc-desktop gentoo-xfce-vnc-desktop
```


# Usage
// docker side
```
docker run -ti -p 5900:5900 -e USER=root -v /tmp/.X11-unix:/tmp/.X11-unix auronc/gentoo-xfce-vnc-desktop
ifconfig | grep -w inet  # check ip
vncpasswd
vncserver
```

// vnc client side  
```
vncviewer <ip>:<port>
ex:
  vncviewer 172.17.0.5:5901
```


# Problem
```
1. run docker image.
2. check ip.
3. run vnc server.
4. run vnc client.
5. problem: only gray screen, but no xfce desktop.
```
If you know where the problem is, please help me. ;)
![problem](http://i.imgur.com/CVu8Jr0.jpg)
