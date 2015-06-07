# bitmeteros-raspi
## This is a Work-In-Progress as of 6/6/15

BitMeter OS - a bandwidth monitor 
====================================================

This is a fork of a fork and I wont be providing support for it. My only contribution is README.md and install.sh

BitMeter is a great solution for keeping a close eye on your internet bandwidth usage.

**Install**
```shell
git clone https://github.com/upperhill/bitmeteros-raspi/

cd bitmeteros-raspi/

sudo ./install.sh

```
**Access BitMeter Web Interface**

http://localhost:2605/index.html


**Bitmeter OS – commands: start, stop, restart.**

 sudo /etc/init.d/bitmeterweb stop
 
 sudo /etc/init.d/bitmeterweb start
 
 sudo /etc/init.d/bitmeterweb restart

**Important Note**

By default BitMeter writes updates to its database at 1 second intervals. To increase this interval, use the bmdb setconfig command to change the cap.write_interval value. For example, to change the interval to 5 seconds, use the following command:

 > bmdb setconfig cap.write_interval 5
 
 **References** : http://codebox.org.uk/pages/bitmeteros/faq

