desc "This task is called by the Heroku scheduler add-on to add connexions on likedin and invite them to visit our website"
task :start_linkedin_scrap => :environment do
  puts "Scrapping linkedin users..."
  StartLinkedinScrap.new.perform
  puts "done."
end

desc "This task is called by the Heroku scheduler add-on to gather tweets about coding"
task :twitbot_service => :environment do
  puts "Sending twitts about THP..."
  TwitbotService.new.gather
  puts "done."
end

desc "This task is called by the Heroku scheduler add-on to send tweets about THP"
task :twitbot_service => :environment do
  puts "Sending tweets about THP..."
  TwitbotService.new.tweet
  puts "done."
end
