# frozen_string_literal: true

require 'csv'
require_relative 'scrap.rb'

class SaveCsv
  def initialize
    @scrap = Scrap.new
    @titles = @scrap.titles
    @dates = @scrap.dates
    @links = @scrap.links
  end

  def save_to_csv
    CSV.open('pets.csv', 'w') do |csv|
      (0...@titles.size).each do |index|
        csv << [name: @titles[index], date: @dates[index], links: @links[index]]
      end
    end
  end
end

save = SaveCsv.new
save.save_to_csv
