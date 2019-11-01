require './lib/scrap.rb'

describe 'titles' do
  it 'returns an array of title' do
    scrap = Scrap.new
    expect(scrap.titles).not_to be_empty
  end
end

describe 'links' do
  it 'returns an array of links' do
    scrap = Scrap.new
    expect(scrap.links).not_to be_empty
  end
end

describe 'dates' do
  it 'returns an array of dates' do
    scrap = Scrap.new
    expect(scrap.links).not_to be_empty
  end
end
