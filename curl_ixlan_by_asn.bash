#!/bin/bash

APIKEY=<REPLACE_WITH_KEY>

ASN=$1

echo "----------"
echo "ASN:$ASN"
echo "----------"
DATA=`curl -H "Authorization: api-key $APIKEY" -sG https://www.peeringdb.com/api/netixlan --data-urlencode asn__in=$ASN`

# Calculate unique IXs
TOTALIXPARTICIPATION=`echo $DATA | jq '[.data[]]' | jq 'map(.ix_id) | unique | length'`
echo "Total unique IX count $TOTALIXPARTICIPATION"

# Calculate unique IXs
#TOTALIXLIST=`echo $DATA | jq '[.data[]]' | jq 'map(.ix_id) | unique' | jq '.[]'`
#echo "Total unique IX $TOTALIXLIST"

# Calculate port count 
TOTALCOUNT=`echo $DATA |  jq '[.data[] | .speed ] | length'`
echo "Total port count $TOTALCOUNT"

# Calculate total port capacity installed by ASN
TOTALPORT=`echo $DATA |  jq '[.data[] | .speed ] | add'`
echo "Total port capacity deployed $TOTALPORT MBPS"
 

#echo "List presence at peering LANs with ip addresses, port size and date of creation"
# List presence at peering LANs with ip addresses, port size and date of creation 
#echo $DATA |  jq -r '.data[] | .speed, .created, .ipaddr4, .ipaddr6, .name' | paste - - - - - | sort -nr
echo $DATA |  jq -r '.data[] | [.ix_id, .speed, .name] | @csv' > $ASN.csv

