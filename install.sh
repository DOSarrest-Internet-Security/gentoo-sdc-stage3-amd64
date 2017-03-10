# Say hello
#echo "Bootstrapped ${stage} into /:"
ls --color -lah
emerge-webrsync
emerge -1 -j2 -v portage
emerge --exclude="glibc" -j2 -vuND @world
rm -fr /usr/portage/*

