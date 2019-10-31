require './lib/scrap.rb'

describe 'scrap' do
  it 'returns an array of title' do
    scrap = Scrap.new
    expect(scrap.titles).not_to be_empty
  end

  it 'returns an array of links' do
    scrap = Scrap.new
    expect(scrap.links).not_to be_empty
  end

  it 'returns an array of date' do
    scrap = Scrap.new
    expect(scrap.dates).not_to be_empty
  end
end
