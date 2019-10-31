require './lib/scrap.rb'

describe 'scrap' do
  # it 'returns an instance of Nokogiri' do
  #   scrap = Scrap.new
  #   expect(scrap).to be_instance_of(XML)
  # end

  it 'returns an array of links' do
    scrap = Scrap.new
    expect(scrap.links).not_to be_empty
  end

  it 'returns an array of date' do
    scrap = Scrap.new
    expect(scrap.links).not_to be_empty
  end
end
