#!/bin/bash

cat > $CLUSTER_FILE <<EOF
[GAMEPLAY]
game_mode = $GAME_MODE
max_players = $MAX_PLAYERS
pvp = false
pause_when_empty = true

[NETWORK]
cluster_description = $CLUSTER_DESCRIPTION
cluster_name = $CLUSTER_NAME
cluster_password = $CLUSTER_PASSWORD

[MISC]
console_enabled = true

[SHARD]
shard_enabled = true
bind_ip = 127.0.0.1
master_ip = 127.0.0.1
master_port = 10998
cluster_key = $CLUSTER_KEY
EOF
