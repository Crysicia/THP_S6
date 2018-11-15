desc "This task is called by the Heroku scheduler add-on to add connexions on likedin and invite them to visit our website"
task :start_linkedin_scrap => :environment do
  puts "Scrapping linkedin users..."
  StartLinkedinScrap.new.perform
  puts "done."
end

desc "This task is called by the Heroku scheduler add-on to send twitts about THP"
task :twitbot_service => :environment do
  puts "Sending twitts about THP..."
  TwitbotService.new.perform
  puts "done."
end
