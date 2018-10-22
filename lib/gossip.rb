class Gossip
  def initialize(author, content)
    @author = author
    @content = content
  end
  
  def save
    File.open('./db/database.json', 'ab') do |file|
      file << {'author' => @author, 'content' => @content}.to_json
    end
  end
end