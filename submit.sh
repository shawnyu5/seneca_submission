#!/bin/bash
#purpose of this file: submit seneca OOP workshop
#Date: 2021-09-17
#---------------------------------

SUBMISSION_COMMAND="~shawn.yu/submit 345"

# if -ms flag, then submit milestone
if [[ "$1" == "-ms" ]]; then
    shift 1
    if [[ $# == 0 ]]; then
        read -p "Which milestone (1-3)? MS_" MILESTONE
    else
        echo "else entered"
        MILESTONE="$1"
    fi
    echo "submitting assignment milestone $MILESTONE"
    echo "${SUBMISSION_COMMAND}_ms${MILESTONE}"

elif [[ "$1" == "config" ]]; then
    read -p "Prof first name: " FIRST_NAME
    read -p "Prof last name: " LAST_NAME

    sed "s|SUBMISSION_COMMAND=.*|SUBMISSION_COMMAND=\"~/$FIRST_NAME.$LAST_NAME/submit 345\"|g" submit.sh

# else submit workshop
else
    if [ $# = 1 ]; then
        WS_NUMBER=$1
        read -p "part number (1/2): " WS_PART
    elif [ $# = 2 ]; then
        WS_NUMBER=$1
        WS_PART=$2
    else
        read -p "workshop number (1-9): " WS_NUMBER
        read -p "part number (1/2): " WS_PART
    fi
    #echo "submitting workshop $WS_NUMBER part $WS_PART"
    echo "${SUBMISSION_COMMAND}_w${WS_NUMBER}_p${WS_PART}"
fi
