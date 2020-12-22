FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

#RUN sed -i 's/ports.ubuntu.com/mirror.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --no-install-recommends sudo apt-utils openssh-server &&\
# RUN apt-get install -y --no-install-recommends sudo &&\
cp /etc/sudoers /etc/sudoers.new && \ 
echo "%docker ALL=(ALL:ALL) ALL" >> /etc/sudoers.new && \ 
visudo -c -f /etc/sudoers.new && \ 
cp /etc/sudoers.new /etc/sudoers && \ 
rm /etc/sudoers.new













