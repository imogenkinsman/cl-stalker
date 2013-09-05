require 'open-uri'
require 'nokogiri'
require 'uri'

desc "craigslist scraper"
task :scrape => :environment do

  doc = Nokogiri::HTML(open(ENV['url']))
  results = doc.css('.row')

  host = "https://#{URI.parse(ENV['url']).host}"

  results.each do |result|
    url = result.css('a').first['href']
    post_id = result['data-pid']
    price = result.css('.price').text.gsub(/[^0-9]/,'').to_i

    result_page = Nokogiri::HTML(open(host + url))
    description = result_page.css('#postingbody').text

    unless Listing.find_by post_id: post_id
      Listing.create(post_id: post_id, price: price, description: description)
    end
  end

end