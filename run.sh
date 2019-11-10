#!/usr/bin/env bash

_term()
{
  kill -TERM "$child" 2> /dev/null
}

trap _term SIGTERM
service nginx start &
child=$!
wait "$child"