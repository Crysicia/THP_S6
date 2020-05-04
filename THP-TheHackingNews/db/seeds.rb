require 'faker'
#Create 10 users
10.times do
  user = User.create(name: Faker::Name.first_name)
  #Create 10 links and add the user id
  10.times do
    link = Link.new(link: Faker::Internet.url)
    link.user = user
    link.save
    #Create a first comment, add the user, the link and set it's parent to itself
    first_comment = Comment.new(comment: Faker::TheFreshPrinceOfBelAir.quote)
    first_comment.user = user
    first_comment.link = link
    first_comment.parent = first_comment
    first_comment.save
    #Create 20 children comments
    20.times do
      children_comment = Comment.new(comment: Faker::TwinPeaks.quote)
      children_comment.user = user
      children_comment.link = link
      children_comment.parent = first_comment
      children_comment.save
    end
  end
end