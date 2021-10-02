const webscraper = require('web-scraper-headless');
const fs = require('fs-extra');

async function main() {
  const sitemap = fs.readJSONSync(__dirname + '/sitemap.json');

  const options = {delay: 10, pageLoadDelay: 10, browser: 'headless'} // optional delay, pageLoadDelay and browser
  const scraped = await webscraper(sitemap, options);
  console.log(scraped);
}

main();

