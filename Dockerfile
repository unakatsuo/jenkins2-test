FROM centos:7
WORKDIR /var/tmp
ENTRYPOINT ["/sbin/init"]
RUN yum install -y yum-utils createrepo rpm-build rpmdevtools rsync sudo