echo " ---> Running Emerge Web RSync"
emerge-webrsync
echo " ---> Installing portage"
emerge -1 -j2 -v portage
echo " ---> Installing nano"
emerge -j2 -v nano
echo " ---> Updating world"
emerge --exclude="glibc" -j2 -vuND @world
echo " ---> Removing unnecessary sysinit tasks"
rc-update del udev sysinit
rc-update del udev-trigger sysinit
rc-update del kmod-static-nodes sysinit
rc-update del opentmpfiles-dev sysinit
echo " ---> Cleaning up"
emerge --depclean
rm -fr /usr/portage/*
rm install.sh
