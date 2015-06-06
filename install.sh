#/bin/bash

apt-get install automake build-essential

cd build/linux ;

cp -r debian/etc/init.d /etc ;

cp -r debian/var/lib/bitmeter /var/lib/ ;

cp -r debian/var/www/bitmeter /var/www/ ;

cp debian/var/lib/bitmeter/bitmeter.db.new /var/lib/bitmeter/bitmeter.db ;

make && make install ;

bmdb webremoteadmin && /etc/init.d/bitmeterweb stop ; service  bitmeterweb restart 

echo -e "Access BitmeterOS at http://$(ifconfig eth0 | grep inet | awk '{print $2}' | sed 's/addr://' | grep .)/index.html"
