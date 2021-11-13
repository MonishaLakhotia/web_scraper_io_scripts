# vim: filetype=bash

scrape SITE_MAP DATA_FORMAT='json':
  #!/usr/bin/env bash
  cp '{{SITE_MAP}}' './src/sitemap.json';
  node ./src/scrape.js '{{DATA_FORMAT}}' | tee './src/output.{{DATA_FORMAT}}';

format-all:
  find -E . -type f -iregex ".*\.(jsx?|json|tsx?|html)$" -not -path "*/node_modules/*" -exec prettier --write "{}" \;

install:
  yarn install;

