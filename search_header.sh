for URL in `cat /home/faisal/Desktop/site.txt`;
do
echo $URL
if ((  $(curl -IL $URL --stderr - | grep -c "x-powered-by: BionicWP") > 0 )) ;
then
echo $URL >> /home/faisal/Desktop/inbionic.txt
else
echo $URL >> /home/faisal/Desktop/notinbio.txt
fi
echo " "
done