echo
echo
echo "atv 2 IP:"
ifconfig |grep "inet" | grep "Bcast" | cut -d " " -f12 

echo
echo
