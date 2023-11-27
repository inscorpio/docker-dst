#!/bin/bash

cd $DST_DIR/bin64

echo "=============== Don't Starve Together - Lunching ==============="

run_shared=(./dontstarve_dedicated_server_nullrenderer_x64)
run_shared+=(-console)
run_shared+=(-cluster "$CLUSTER_DIR_NAME")
run_shared+=(-monitor_parent_process $$)

"${run_shared[@]}" -shard Caves  | sed 's/^/Caves:  /' &
"${run_shared[@]}" -shard Master | sed 's/^/Master: /' ||
echo "=============== Don't Starve Together - Lunch fail ==============="
