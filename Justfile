# vim : set filetype=bash :

scrape SITE_MAP:
  #!/usr/bin/env bash
  cp '{{SITE_MAP}}' ./src/sitemap.json;
  node ./src/scrape.js | tee ./src/output.json;

install:
  yarn install;

