#!/bin/bash

cat > $CAVES_SERVER_FILE <<EOF
[NETWORK]
server_port = $CAVES_PORT

[SHARD]
is_master = false
name = Caves

[STEAM]
master_server_port = 27019
authentication_port = 8769
EOF
