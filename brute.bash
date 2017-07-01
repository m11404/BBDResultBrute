#!/bin/bash
echo $1


token=$(curl  http://27.251.216.195:8060/AppBBDUProject/university/result/report/ressinstuonlrepdir.action | grep -Eoh "ressinstuonlrepdir\.action;jsessionid=([[:alnum:]]){20,50}")

getResult(){
echo $1 $2 $3 >>log.txt
out=$(curl "http://27.251.216.195:8060/AppBBDUProject/university/result/report/$token"  -H 'Origin: http://27.251.216.195:8060' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-GB,en-US;q=0.8,en;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Referer: http://27.251.216.195:8060/AppBBDUProject/university/result/report/ressinstuonlrepdir.action' -H 'Connection: keep-alive' -H 'DNT: 1' --data "p1=1&univ_rno=$1&studnet_name=$2&mother_name=$3&method%3AgetStudentResult=Show+Result" --compressed)


#status=$(echo "$out" | grep -q "avilable")
 if echo "$out" | grep -q "avilable"; then 
   echo "Not found"
#   echo "$out"> $1.ehtml
 else
   echo "$out"> $1.html
   exit
 fi
}

foo=dsmrnbigaceptjfhklouvwqxyz
for (( i=0; i<${#foo}; i++ )); do
  echo "Trying ${foo:$i:1}"
  getResult $1 $2 ${foo:$i:1}
done 
