#!/bin/bash

cat > $CAVES_WORLD_FILE <<EOF
return {
    override_enabled = true,
    preset = "DST_CAVE",
    overrides = {},
}
EOF
