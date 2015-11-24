FROM vikraman/gentoo
MAINTAINER AuronC <auronc@gmail.com>

ENV HOME /root

# environment
RUN echo INPUT_DEVICES=\"evdev synaptics\" >> /etc/portage/make.conf
RUN echo VIDEO_CARDS=\"intel i965\" >> /etc/portage/make.conf
RUN echo "sys-fs/udev gudev" >> /etc/portage/package.use/udev
RUN echo "x11-libs/cairo X" >> /etc/portage/package.use/cairo

# install
RUN emerge x11-base/xorg-server xfce4-meta x11-terms/xfce4-terminal
RUN env-update
RUN source /etc/profile

WORKDIR /root
