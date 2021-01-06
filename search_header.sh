for URL in `cat /home/Talha/Desktop/site.txt`;
do
echo $URL
if ((  $(curl -IL $URL --stderr - | grep -c "x-powered-by: BionicWP") > 0 )) ;
then
echo $URL >> /home/Talha/Desktop/inbionic.txt
else
echo $URL >> /home/Talha/Desktop/notinbio.txt
fi
echo " "
done
