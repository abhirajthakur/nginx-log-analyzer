#!/usr/bin//bash

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' nginx-access.log | sort -V | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\n..."
echo "Top 5 most requested paths:"
awk '{print $7}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5  | awk '{print $2 " - " $1 " requests"}'

echo -e "\n..."
echo "Top 5 response status codes:"
awk -F\" '{print $3}' nginx-access.log | awk '{print $1}' | sort | uniq -c | sort -nr | head -n 5  | awk '{print $2 " - " $1 " requests"}' 

echo -e "\n..."
echo "Top 5 user agents:"
awk '{print $NF}' nginx-access.log | sort | uniq -c | sort -nr | head -n 5  | awk '{print $2 " - " $1 " requests"}'

