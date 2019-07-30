FROM centos-essential

RUN yum -y update && yum -y install \
make git gcc gcc-c++ unzip wget epel-release \
perl mariadb-devel openssl-devel python-devel python-pip \
java-1.8.0-openjdk ncurses-devel bzip2-devel xz-devel

RUN yum -y groupinstall "Base"