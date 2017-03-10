FROM gentoo/stage3-amd64

MAINTAINER DOSarrest IT Team

# This one should be present by running the build.sh script
ADD install.sh /

RUN sed -e 's/USE="/USE="vim-syntax -xattr /g' -i /etc/portage/make.conf

RUN /install.sh
