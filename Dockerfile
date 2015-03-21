FROM nicocoffo/archlinux-minimal

ENV LANG en_US.utf8

RUN pacman -Sy --noconfirm --needed expect tigervnc firefox ttf-droid fluxbox xterm
WORKDIR /root/
#ADD .ratpoisonrc /root/.ratpoisonrc
ENV VNCPASSWD vncrocks
#RUN pacman -S -cc --noconfirm
#ln -sf /proc/self/fd /dev
#rm -rf /var/cache/pacman/pkg
ADD xstartup /root/.vnc/xstartup
ADD setpass.sh /root/setpass.sh

#https://www.realvnc.com/products/open/4.0/man/Xvnc.html
#CMD /root/setpass.sh; vncserver -fg -deferUpdate=100 -log=*:stderr:1 -SecurityTypes=None -shmem

CMD /root/setpass.sh; vncserver -fg -log=*:stderr:1 -SecurityTypes=None -geometry 640x480


EXPOSE 5901


