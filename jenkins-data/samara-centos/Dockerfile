FROM centos:7
LABEL maintainer="talant <uchkunfan@gmail.com>"
RUN yum install -y openssh-server && \
    yum install -y sudo 


RUN useradd samara && \
    echo "samara ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/samara && \
    chmod 0440 /etc/sudoers.d/samara && \
    echo "pass123" | passwd samara --stdin && \
    mkdir /home/samara/.ssh && \
    chmod 0700  /home/samara/.ssh 

COPY samara.pub /home/samara/.ssh/authorized_keys
RUN chown samara:samara -R  /home/samara/.ssh/ && \
    chmod 0600 /home/samara/.ssh/authorized_keys


RUN /usr/sbin/sshd-keygen
 
RUN yum install -y mysql
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install awscli --upgrade  

CMD /usr/sbin/sshd -D

     


    
     

