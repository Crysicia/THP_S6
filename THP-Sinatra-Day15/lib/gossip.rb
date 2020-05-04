class Gossip
  attr_reader :author, :content, :comments
  def initialize(author, content, comments)
    @author = author
    @content = content
    @comments = comments
  end
  
  def save
    hash = Hash.new
    hash['author'] = @author
    hash['content'] = @content
    hash['comments'] = @comments
    File.open('./db/database.json', 'ab') do |file|
      file.puts hash.to_json
    end
  end
  
  def self.all
    gossips = []
    File.readlines('./db/database.json').each do |line|
      hash = JSON.parse(line)
      gossips << Gossip.new(hash['author'], hash['content'], hash['comments'])
    end
    return gossips
  end
  
  def self.find(int)
    all_gossips = Gossip.all
    unless all_gossips.length <= int
      return [all_gossips[int], int]
    end
    return ["Gossip not found", int]
  end
  
  def self.edit(text, int)
    existing_file = File.readlines('./db/database.json')
    original_gossip = JSON.parse(existing_file[int])
    original_gossip['content'] = text
    existing_file.delete_at(int)
    existing_file.insert(int, original_gossip.to_json)
    File.open('./db/database.json', 'r+') do |f|
      existing_file.each do |line|
      f.puts line
      end
    end  
  end
  
  def self.add_comment(text, int)
    existing_file = File.readlines('./db/database.json')
    original_gossip = JSON.parse(existing_file[int])
    original_gossip['comments'] << text
    existing_file.delete_at(int)
    existing_file.insert(int, original_gossip.to_json)
    File.open('./db/database.json', 'r+') do |f|
      existing_file.each do |line|
      f.puts line
      end
    end  
  end
end