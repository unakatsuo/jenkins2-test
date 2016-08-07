FROM centos:7
RUN yum install -y yum-utils createrepo rpm-build sudo
WORKDIR /var/tmp
ENTRYPOINT ["/sbin/init"]