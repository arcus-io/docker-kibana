#!/bin/bash
ES_HOST=${ES_HOST:-window.location.hostname}
ES_PORT=${ES_PORT:-9200}

cat << EOF > /usr/share/nginx/www/config.js
var config = new Settings(
{
  elasticsearch:    "http://$ES_HOST:$ES_PORT",
  kibana_index:     "kibana-int",
  modules:          ['histogram','map','pie','table','stringquery','sort',
                    'timepicker','text','fields','hits','dashcontrol',
                    'column','derivequeries','trends','bettermap'],
  }
);
EOF

nginx -c /etc/nginx/nginx.conf
