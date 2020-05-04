require 'nokogiri'
require 'open-uri'

class StartScrap
  def initialize
    @adress = "https://coinmarketcap.com/all/views/all/"
  end
  
  def save(array)
    array.count.times do |i|
      Crypto.create(name: array[i]['Currency'], value: array[i]['Price'])
    end
  end
  
  def scrap
    array = []
    webpage = Nokogiri::HTML(open(@adress))
    webpage.css('tbody>tr').each do |row|
      hash = {}
      hash['Currency'] = row.css('.currency-name')[0]['data-sort']
      hash['Price'] = row.css('.text-right')[1]['data-sort'].to_f
      array << hash
    end
    array
  end
  def update(array)
    i = 0
    len = array.count
    while array[i]['Currency'] != "Bitcoin"
      i += 1
    end
    if Crypto.find_by(name: "Bitcoin").value != array[i]['Price']
      len.times do |n|
        x = Crypto.find(n + 1)
        x.value = array[n]['Price']
        x.save
      end
    end
    diff = len - Crypto.all.count
    if diff > 0
      (diff).times do |n|
      Crypto.create(name: array[len -  diff + n]['Currency'], value: array[len -  diff + n]['Price'])
      end
    end
  end
  def perform
    if Crypto.all.count != 0
      update(scrap)
    else
      save(scrap)
    end
  end 
end 
