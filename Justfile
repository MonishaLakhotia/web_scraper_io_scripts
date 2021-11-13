# vim: filetype=bash

scrape SITE_MAP DATA_FORMAT='json':
  #!/usr/bin/env bash
  cp '{{SITE_MAP}}' './src/sitemap.json';
  node ./src/scrape.js '{{DATA_FORMAT}}' | tee './src/output.{{DATA_FORMAT}}';

format:
  #!/usr/bin/env bash
  changed_files=(`{ git --no-pager status | egrep "[[:blank:]]+(modified|new file):[[:blank:]]+[^[:blank:]]+" | gsed -E "s/.*?(modified|new file):[[:blank:]]+([^[:blank:]]+)/\2/g"; git --no-pager status | egrep "[[:blank:]]+(renamed):[[:blank:]]+[^[:blank:]]+" | gsed -E "s/.*?(renamed):[[:blank:]]+[^[:blank:]]+ -> ([^[:blank:]])/\2/g"; } | egrep "\.(jsx?|tsx?|json|html)$"`);
  prettier --write "${changed_files[@]}"

format-all:
  find -E . -type f -iregex ".*\.(jsx?|json|tsx?|html)$" -not -path "*/node_modules/*" -exec prettier --write "{}" \;

install:
  yarn install;

