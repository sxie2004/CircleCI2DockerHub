#!/bin/bash
set -e

VALUE="$1"

case $VALUE in
web_test)
  echo "Starting the node web_test..."
  /usr/bin/supervisord -c /etc/supervisor/conf.d/web_test.conf
  ;;
*)
  echo "Executing: $@"
  exec "$@"
  ;;
esac

echo "Goodbye!"
