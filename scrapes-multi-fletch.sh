#!/usr/bin/env bash
l=("https://secure.runescape.com/m=hiscore_oldschool/overall?table=10\&page=1" "https://secure.runescape.com/m=hiscore_oldschool/overall?table=10\&page=2");
# l=(1 2 "hithere" "yo")
for url in ${l[@]}; do
  sed -E -i'' "s,(.*?startUrl\":)(.*?),\1[\"$url\"]\,," ./osrs/fletching.json
  i=`echo "$url" | sed -E "s/.*page=(.*)/\1/"`
  just scrape ./osrs/fletching.json | tee "fletching_$i.json"
done;