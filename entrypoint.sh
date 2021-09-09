#!/usr/bin/env bash
set -euo pipefail

rm -f /tmp/.startup-complete

if [ -x /etc/rc.local ] ; then
  /etc/rc.local
fi

touch /tmp/.startup-complete
exec /usr/sbin/crond -f -d 8
