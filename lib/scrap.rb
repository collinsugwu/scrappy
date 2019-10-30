require 'HTTParty'
require 'Nokogiri'
require 'Pry'

class Scrap
  def initialize
    page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0&lang=en&cc=gb')
    @parse_page = Nokogiri::HTML(page)
  end

  def titles
    title = []
    list_items.each do |element|
      title << element.css('p.result-info').css('a.hdrlnk').text
    end
    title
  end

  def links
    links = []
    list_items.each do |element|
      links << element.css('p.result-info').css('a')[0].attributes['href'].value
    end
    links
  end

  def dates
    date = []
    list_items.each do |element|
      date << element.css('p.result-info').css('time').text
    end
    date
  end

  private

  def list_items
    @parse_page.css('#sortable-results').css('.rows').css('li')
  end
end

scrap = Scrap.new
title = scrap.titles
date = scrap.dates
links = scrap.links
puts title
puts date
puts links
