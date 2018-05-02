#!/bin/bash

mkdir -p $HOME/build-aarch64
pushd $HOME/build-aarch64
make distclean
$SRCDIR/configure \
 --cross-prefix=aarch64-linux-gnu- \
 --disable-bluez \
 --disable-brlapi \
 --disable-curl \
 --disable-curses \
 --enable-fdt \
 --disable-netmap \
 --disable-sdl \
 --disable-virtfs \
 --disable-vde \
 --disable-vnc \
 --disable-vnc-sasl \
 --disable-vnc-jpeg \
 --disable-vnc-png \
 --disable-xen \
 --disable-linux-aio \
 --disable-cocoa \
 --disable-spice \
 --disable-smartcard \
 --disable-libusb \
 --disable-glusterfs \
 --disable-gtk \
 --disable-nettle \
 --disable-vxhs \
 --disable-libxml2 \
 --disable-user \
 --disable-guest-agent \
 --disable-guest-agent-msi \
 --disable-modules \
 --disable-linux-user \
 --disable-docs \
 --disable-opengl \
 --disable-vte \
 --disable-hax \
 --disable-brlapi \
 --disable-libusb \
 --disable-usb-redir \
 --disable-lzo \
 --disable-snappy \
 --disable-curl \
 --disable-glusterfs \
 --disable-libiscsi \
 --disable-libnfs \
 --disable-libssh2 \
 --disable-bzip2 \
 --disable-lzo \
 --disable-snappy \
 --disable-seccomp \
 --disable-tpm \
 --disable-usb-redir \
 --disable-debug-tcg \
 --disable-qom-cast-debug \
 --disable-tcg-interpreter \
 --disable-tcmalloc \
 --disable-tools \
 --disable-xen \
 --disable-capstone \
 --enable-kvm \
 --enable-vhost-net \
 --enable-vhost-crypto \
 --enable-vhost-scsi \
 --enable-vhost-vsock \
 --enable-vhost-user \
 --enable-rbd \
 --enable-attr \
 --enable-cap-ng \
 --target-list=aarch64-softmmu \
 --extra-cflags=" -O3 -fno-semantic-interposition -falign-functions=32 -D_FORTIFY_SOURCE=2 -fPIE" \
 --extra-ldflags=" -pie -z noexecstack -z relro -z now" \
 --libdir=/usr/lib64/nemu \
 --libexecdir=/usr/libexec/nemu \
 --datadir=/usr/share/nemu
make -j4
popd