#!/bin/bash

metric=$1
if [[ -z "$metric" ]]; then
  echo "No metric specified"
  exit 1
fi

case $metric in
  metric1|metric2|metric3)
    value=$(( RANDOM % 101 ))
    echo "$value"
    ;;
  *)
    echo "Invalid metric"
    exit 1
    ;;
esac

