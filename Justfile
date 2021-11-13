# vim: filetype=bash

scrape SITE_MAP DATA_FORMAT='json':
  #!/usr/bin/env bash
  cp '{{SITE_MAP}}' './src/sitemap.json';
  node ./src/scrape.js '{{DATA_FORMAT}}' | tee './src/output.{{DATA_FORMAT}}';

install:
  yarn install;

