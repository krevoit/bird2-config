#!/bin/bash

# Define AS-SETs
AS38041_ASSET="AS-REVO"  # Replace with your AS-SET names
AS21738_ASSET="AS-ROZINT"
# Generate filters using bgpq4
bgpq4 -6 -A -S RPKI,AFRINIC,ARIN,APNIC,LACNIC,RIPE $AS38041_ASSET -b -l AS38041_Allowed_v6 | sed '1s/^/define /' > /etc/bird/irr/$AS38041_ASSET-6-filters.list
bgpq4 -6 -A -S RPKI,AFRINIC,ARIN,APNIC,LACNIC,RIPE $AS21738_ASSET -b -l AS21738_Allowed_v6 | sed '1s/^/define /' > /etc/bird/irr/$AS21738_ASSET-6-filters.list
bgpq4 -4 -A -S RPKI,AFRINIC,ARIN,APNIC,LACNIC,RIPE $AS21738_ASSET -b -l AS21738_Allowed_v4 | sed '1s/^/define /' > /etc/bird/irr/$AS21738_ASSET-4-filters.list
# Add more AS-SETs and generate filters as needed

