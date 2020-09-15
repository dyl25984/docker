FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

RUN apt-get update
RUN apt-get install -y --no-install-recommends sudo apt-utils openssh-server &&\
cp /etc/sudoers /etc/sudoers.new && \ 
echo "%docker ALL=(ALL:ALL) ALL" >> /etc/sudoers.new && \ 
visudo -c -f /etc/sudoers.new && \ 
cp /etc/sudoers.new /etc/sudoers && \ 
rm /etc/sudoers.new













