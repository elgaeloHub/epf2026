#!/bin/bash

#0       asn     name    		ix_count        info_types
#1       13335   Cloudflare      357     Content
#2       6939    Hurricane Electric      336     NSP
#3       20940   Akamai Technologies     250     Content
#4       32934   Meta    209     Content
#5       8075    Microsoft       207     Content
#6       15169   Google LLC      176     Content
#7       16509   Amazon.com      167     Enterprise
#8       54113   Fastly, Inc.    152     Content
#9       55256   Netskope        142     Network Services
#10      139341  ACE CDN 123     Content


bash curl_ixlan_by_asn.bash 13335

bash curl_ixlan_by_asn.bash 6939

bash curl_ixlan_by_asn.bash 20940

bash curl_ixlan_by_asn.bash 32934

bash curl_ixlan_by_asn.bash 8075

bash curl_ixlan_by_asn.bash 15169

bash curl_ixlan_by_asn.bash 16509

bash curl_ixlan_by_asn.bash 54113

bash curl_ixlan_by_asn.bash 55256

bash curl_ixlan_by_asn.bash 139341






