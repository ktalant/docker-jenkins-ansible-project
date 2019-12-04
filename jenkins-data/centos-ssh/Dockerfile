FROM centos:7
LABEL maintainer="talant <uchkunfan@gmail.com>"
RUN yum install -y openssh-server && \
    yum install -y sudo 


RUN useradd talant && \
    echo "talant ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/talant && \
    chmod 0440 /etc/sudoers.d/talant && \
    echo "pass123" | passwd talant --stdin && \
    mkdir /home/talant/.ssh && \
    chmod 0700  /home/talant/.ssh 

COPY talant.pub /home/talant/.ssh/authorized_keys
RUN chown talant:talant -R  /home/talant/.ssh/ && \
    chmod 0600 /home/talant/.ssh/authorized_keys


RUN /usr/sbin/sshd-keygen
 
RUN yum install -y mysql
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install awscli --upgrade  

CMD /usr/sbin/sshd -D

     


    
     

