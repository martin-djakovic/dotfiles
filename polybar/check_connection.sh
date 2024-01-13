HOST=debian.org

ping -c1 $HOST 1>/dev/null 2>/dev/null
SUCCESS=$?

if [ $SUCCESS -eq 0 ]
then
  echo "%{F#5d75a1}%{F-}"
else
  echo "%{F#2f2f2f}%{F-}"
fi
