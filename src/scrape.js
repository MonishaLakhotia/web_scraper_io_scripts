const webscraper = require('web-scraper-headless');
const fs = require('fs');
const sitemap = JSON.parse(fs.readFileSync(__dirname+'/sitemap.json'));

const options = {delay: 10, pageLoadDelay: 10, browser: 'headless'} // optional delay, pageLoadDelay and browser
webscraper(sitemap, options)
    .then(function (scraped) {
        // This is your scraped info
      console.log(scraped);
    })
