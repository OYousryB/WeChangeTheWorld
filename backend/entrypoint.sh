#!/bin/bash

rm -f /backend/tmp/pids/server.pid

/usr/bin/wait-services.sh db:3306 -t 0
/usr/bin/wait-services.sh redis:6379 -t 0
/usr/bin/wait-services.sh elasticsearch:9200 -t 0

cd backend
bundle install

rails db:migrate 2>/dev/null || rails db:setup

exec "$@"