sed -e "s/P1/$3/" $1 | curl -s -X POST -H "Content-Type:application/json" --data @- $2:6969/pchain | jq .
