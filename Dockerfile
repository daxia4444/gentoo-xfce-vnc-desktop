FROM vikraman/gentoo
MAINTAINER AuronC <auronc@gmail.com>

ENV HOME /root
WORKDIR /root

# install x
RUN echo INPUT_DEVICES=\"evdev synaptics\" >> /etc/portage/make.conf
RUN echo VIDEO_CARDS=\"fbdev\" >> /etc/portage/make.conf
ENV USE X
RUN emerge x11-base/xorg-drivers media-libs/mesa x11-base/xorg-server

# install xfce
RUN echo "sys-fs/udev gudev" >> /etc/portage/package.use/udev
ENV USE -gnome -kde -minimal -qt4 dbus jpeg lock session startup-notification thunar udev X
RUN emerge xfce-base/xfce4-meta x11-terms/xfce4-terminal

# copy xfce setting
RUN mkdir /root/.vnc
COPY xstartup /root/.vnc/

# install vnc server
ENV USE server
RUN emerge --update --newuse net-misc/tightvnc
RUN env-update
RUN source /etc/profile

# export port
EXPOSE 5900
