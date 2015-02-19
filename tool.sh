#!/bin/bash

echo "do you want megahosts [you must run this as ROOT]" 
read yn
case $yn in
  [Yy] | [yY] )
            echo "Agreed"
            cp megahosts /etc/hosts && dscacheutil -flushcache 
            echo "megahosts copied in.. cache flushed"
            ;;

          [nN] | [n|N] )

            echo "Not Agreed Giving you Regular Hosts"
            cp lowhosts /etc/hosts && dscacheutil -flushcache 
            echo "lowhosts copied in.. cache flushed"
            exit 1
            ;;

          *) echo "Invalid"
            ;;
        esac
