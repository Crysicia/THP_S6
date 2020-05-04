require 'csv'
require 'json'

class CsvMaster
  def self.setup
    emails = File.read("db/emails.json") 
    @parsed_emails = JSON.parse(emails)
  end
  
  def self.filler
    CSV.open("db/emails.csv", "w") do |csv|
      @parsed_emails.each do |hash|
        csv << [hash["name"], hash["email"]]
      end
    end   
  end
  
  def self.perform
    self.setup
    self.filler
  end
end

CsvMaster.perform