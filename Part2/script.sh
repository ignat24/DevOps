#!/bin/bash

#If $2 write ip and requests in file requests.txt
function ip_and_requests () {
    for user_ip in ${!ip_array[@]}
    do 
     echo  ${ip_array[$user_ip]} "requests ip:" $user_ip
    done > requests.txt
}

function most_popular_ip () {
    for user_ip in ${!ip_array[@]}
    do 
        echo  ${ip_array[$user_ip]} "requests ip:" $user_ip
    done | sort -rn | head -1 > popular_ip.txt
}


function all_requests () {
    declare -A ip_array
    while read line;
    do
        user_ip=$(echo $line | awk '{print $1}')
        if [[ -v ip_array[$user_ip] ]]; then
            ip_array[$user_ip]=$((ip_array[$user_ip]+1))
        else
            ip_array[$user_ip]=1
        fi
    done < $1
    if [[ $2 == "--all" ]]
    then
        ip_and_requests $ip_array
    elif [[ $2 == "--p" ]]
    then    
        most_popular_ip $ip_array
    else 
    echo "Error"
    fi
}

function bots_pages () {
    declare -A bots
    while read line;
    do
        bot=$(echo $line | awk '{print $14}' | grep 'bot')
        if [[ $bot != "" ]]
            then
            ip=$(echo $line | awk '{print $1}')
            bots[$ip]=$bot
        fi
        
    done < $1

    for bot in ${!bots[@]}
    do 
        echo "Bot ip:" $bot "name:" ${bots[$bot]}
    done > bots.txt
}
function most_popular_page () {
    declare -A pages
    while read line;
    do
        page=$(echo $line | awk '{print $7}')
        if [ $page != "/" ]
        then
            if [ -v pages[$page] ]
            then
            pages[$page]=$((pages[$page]+1))
            else
            pages[$page]=1
            fi
        fi
    done < $1
    for page in ${!pages[@]}
    do 
        echo ${pages[$page]}" - Most popular page:" $page
    done | sort -rn | head -1 > popular_page.txt

}

function not_existent_pages (){
    echo $1  > not_existent_pages.txt
    while read line;
    do
        code=$(echo $line | awk '{print $9}')
        
        if [[ $code == "302" ]]
        then 
        page=$(echo $line | awk '{print $7}')
        echo $code $page >> not_existent_pages.txt
        fi
    done < $1 
}
function popular_time () {
    declare -A time_array
    while read line;
    do  
        
        time=$(echo $line | awk '{print $4}')
        IFS=":" read -ra time_temp <<< "$time"
        hour=${time_temp[1]}
        if [[ -v time_array[$hour] ]]; then
            time_array[$hour]=$((time_array[$hour]+1))
        else
            time_array[$hour]=1
        fi

    done < $1
    for hour in ${!time_array[@]}
    do 
        echo ${time_array[$hour]}"requests - Most popular time:" $hour" hour" > popular_time.txt
    done | sort -rn | head -1 
}


if [ $# -eq 0 ]
then
echo "Keys:"
echo "1 keys - filename"
echo "2 keys:"
echo "--pt - popular time | --nep - not_existent_pages | --bp - bots pages | --ar - all_requests [--all - all requests | --p - most popular ip]"
elif [ $# -eq 2 ]
then
    if [ $2 == "--pt" ]
    then 
    popular_time $1
    elif [ $2 == "--nep" ]
    then
    not_existent_pages $1 
    elif [ $2 == "--bp" ]
    then
    bots_pages $1 
    fi
elif [ $# -eq 3 ]
then
    if [ $2 == "--arr" ] && [ $3 == "--all" ] || [ $3 == "--p" ]
    then 
    all_requests $1 $3
    fi
else 
echo "Error!"
fi
#popular_time $1
# not_existent_pages $1
# most_popular_page $1
# bots_pages $1
# all_requests $1 $2