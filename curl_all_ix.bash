#!/bin/bash

APIKEY=<REPLACE_WITH_KEY>

curl -H "Authorization: api-key $APIKEY" -sG https://www.peeringdb.com/api/ix | jq -r '.data[] | [.id, .name, .name_long, .city, .country, .region_continent, .net_count, .fac_count] | @csv' > all_ix.csv

