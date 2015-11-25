# gentoo-xfce-vnc-desktop
Run gentoo-xfce on docker via VNC.


# Usage
// docker side

docker run -ti -p 5900:5900 -e USER=root -v /tmp/.X11-unix:/tmp/.X11-unix auronc/gentoo-xfce-vnc-desktop

ifconfig | grep -w inet  # check ip

vncpasswd

vncserver



// vnc client side  
vncviewer <ip>:<port>

example:

vncviewer 172.17.0.5:5901


# Build
git clone git@github.com:auronc/gentoo-xfce-vnc-desktop.git

docker build --rm -t auronc/gentoo-xfce-vnc-desktop gentoo-xfce-vnc-desktop


# Problem
![problem](http://i.imgur.com/CVu8Jr0.jpg)
