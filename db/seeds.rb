#Faker is used to put fake datas
require 'faker'

#Create 20 courses with fake data
20.times do
  course = Course.create(title: Faker::HitchhikersGuideToTheGalaxy.character, description: Faker::HitchhikersGuideToTheGalaxy.quote)
  #Create 10 lectures for each course
  10.times do |i|
    lecture = Lecture.create(title: "Chapter #{i+1}", body: Faker::VForVendetta.speech)
    lecture.course = course
    lecture.save
  end
end