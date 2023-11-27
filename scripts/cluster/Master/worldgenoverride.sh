#!/bin/bash

cat > $MASTER_WORLD_FILE <<EOF
return {
    override_enabled = true,
    preset = "SURVIVAL_TOGETHER",
    overrides = {},
}
EOF
