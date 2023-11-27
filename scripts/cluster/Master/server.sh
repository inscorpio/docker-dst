#!/bin/bash

cat > $MASTER_SERVER_FILE <<EOF
[NETWORK]
server_port = $MASTER_PORT

[SHARD]
is_master = true

[STEAM]
master_server_port = 27018
authentication_port = 8768
EOF
