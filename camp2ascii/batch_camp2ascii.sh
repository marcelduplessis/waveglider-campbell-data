#!/usr/bin/env bash
set -euo pipefail

CAMP2ASCII_DIR="/Users/xduplm/Google Drive/My Drive/projects/WHIRLS/Code/camp2ascii"
DAT_DIR="/Users/xduplm/Google Drive/My Drive/data/whirls/20260521_WG1169_dockside_test_CT"

cd "$CAMP2ASCII_DIR"

for dat in "$DAT_DIR"/*.dat; do
    [ -e "$dat" ] || continue   # skip if no .dat files

    base=$(basename "$dat" .dat)
    out="$DAT_DIR/${base}.csv"

    echo "Converting $dat -> $out"
    ./bin/camp2ascii "$dat" -t excel -d , > "$out"
done

echo "All conversions done."
