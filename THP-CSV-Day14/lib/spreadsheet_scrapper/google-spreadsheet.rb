require "google_drive"
class Spreadsheet
  def self.setup(key)
    session = GoogleDrive::Session.from_config("config.json")
    @ws = session.spreadsheet_by_key(key).worksheets[0]
    emails = File.read("db/emails.json") 
    @parsed_emails = JSON.parse(emails)
  end
  
  def self.filler
    @parsed_emails.each_with_index do |hash, i|
      @ws[i+1, 1] = hash["name"]
      @ws[i+1, 2] = hash["email"]
    end
    @ws.save
  end
  
  def self.perform
    self.setup("1RT_z57cCa4aIT3uHM9q7zL0ZRaGOOhKyUYpSsXeEf-s")
    self.filler
  end
end