FROM ghcr.io/archlinux/archlinux:base

RUN pacman --noconfirm -Sy rtl-sdr && pacman --noconfirm -Scc

EXPOSE 1234

CMD ["/usr/bin/rtl_tcp", "-a", "0.0.0.0"]