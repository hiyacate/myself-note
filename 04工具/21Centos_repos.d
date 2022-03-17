CentOs8 & CentOs7
sudo sed -e "s|^mirrorlist=|#mirrorlist=|g" \
         -e "s|^#baseurl=http://mirror.centos.org|baseurl=https://mirrors.tuna.tsinghua.edu.cn|g" \
         -i.bak \
         /etc/yum.repos.d/CentOS-*.repo
sudo yum makecache

CentOs6
minorver=6.10
sudo sed -e "s|^mirrorlist=|#mirrorlist=|g" \
         -e "s|^#baseurl=http://mirror.centos.org/centos/\$releasever|baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos-vault/$minorver|g" \
         -i.bak \
         /etc/yum.repos.d/CentOS-*.repo

sudo yum makecache
