HOST=debian.org

ping -c1 $HOST 1>/dev/null 2>/dev/null
SUCCESS=$?

if [ $SUCCESS -eq 0 ]
then
    echo " "
    echo " "
    echo \#869dc6
else
    echo " "
    echo " "
    echo \#2f2f2f
fi
