#!/bin/bash
set -e

echo 'Starting all systems'
pio-start-all &&

echo "Starting rsyslog"
rsyslogd

tail -f /var/log/syslog

function shut_down {
  echo 'Stopping all systems'
  pio-stop-all

  pid=$(pgrep -f tail)
  kill -SIGTERM $pid
  echo 'Done'
  exit
}

trap "shut_down" SIGKILL SIGTERM SIGHUP SIGINT EXIT
