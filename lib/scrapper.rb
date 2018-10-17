require 'open-uri'
require 'nokogiri'
require 'json'

class Scrapper
  def self.get_the_email_of_a_townhal_from_its_webpage(webpage)
    page = Nokogiri::HTML(open(webpage))
    page.css("td")[7].text
  end

  def self.get_all_the_urls_of_val_doise_townhalls 
    hash = {}
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    page.css("a.lientxt").each do |a|
      hash[a.text] = "http://annuaire-des-mairies.com/#{a['href']}"
    end
  return hash
end

  def self.get_all_the_emails_of_val_doise_townhalls
    array = []
    hash = self.get_all_the_urls_of_val_doise_townhalls
    hash.each do |k, v|
		  h = {}
      h["name"] = k
      h["email"] = self.get_the_email_of_a_townhal_from_its_webpage(v)
		  array << h
    end 
    array
end


  def self.perform
    File.open("db/emails.json", "w") do |file|     
      file.write(self.get_all_the_emails_of_val_doise_townhalls.to_json)
    end
  end
end
