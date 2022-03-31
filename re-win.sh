#!/usr/bin/bash
# udføres i den folder hvor filerne ligger

ls *json | cut -d\.  -f1 > idlist
cat idlist | while read x;
do
  sed -i -e '/_id/a\'$'\n'"\"match_id\":$x," $x.json
done

