i="0"

while [ $i -lt 4 ]
do
    cd /aws-scripts-mon
    ./mon-put-instance-data.pl --mem-used --verbose --memory-units=bytes
    ./mon-put-instance-data.pl --mem-avail --verbose  --memory-units=bytes
    sleep 10
done