#!/bin/bash
echo "are you root?"
read yn

case $yn in
  [Yy] | [yY] )
    echo "continuing"

    ;;

  [nN] | [n|N] )
    echo "you must be root"
    exit 1
  
    ;;

  *) echo "Invalid"
    ;;
  esac
echo "do you want megahosts [you must run this as ROOT]" 
read yn
case $yn in
  [Yy] | [yY] )
    echo "Agreed"
    cp redLight /etc/hosts && dscacheutil -flushcache 
    echo "megahosts copied in.. cache flushed"
    ;;

  [nN] | [n|N] )

    echo "Not Agreed Giving you Regular Hosts"
    cp greenLight /etc/hosts && dscacheutil -flushcache 
    echo "lowhosts copied in.. cache flushed"
    exit 1
    ;;

  *) echo "Invalid"
    ;;
esac
