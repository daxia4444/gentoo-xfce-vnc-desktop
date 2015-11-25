FROM vikraman/gentoo
MAINTAINER AuronC <auronc@gmail.com>

ENV HOME /root
WORKDIR /root

# install x
RUN echo INPUT_DEVICES=\"evdev synaptics\" >> /etc/portage/make.conf
RUN echo VIDEO_CARDS=\"fbdev\" >> /etc/portage/make.conf
RUN USE="X" emerge x11-base/xorg-drivers media-libs/mesa x11-base/xorg-server
RUN env-update
RUN source /etc/profile

# install xfce
RUN echo "sys-fs/udev gudev" >> /etc/portage/package.use/udev
RUN USE="-gnome -kde -minimal -qt4 dbus jpeg lock session startup-notification thunar udev X" emerge xfce-base/xfce4-meta x11-terms/xfce4-terminal
RUN env-update
RUN source /etc/profile

# install vnc
RUN USE="server" emerge --update --newuse net-misc/tightvnc

