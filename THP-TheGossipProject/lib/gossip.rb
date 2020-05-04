class Gossip
  attr_reader :author, :content
  def initialize(author, content)
    @author = author
    @content = content
  end
  
  def save
    hash = Hash.new
    hash['author'] = @author
    hash['content'] = @content
    File.open('db/database.json', 'a') {|file|
      file.puts hash.to_json
      }
  end
  
  def self.all
    gossips = []
    File.readlines('db/database.json').each_with_index do  |line, i|
      hash = JSON.parse(line)
      gossips << "[#{i.to_s.colorize(:green)}] Author : #{hash['author']}, Content : #{hash['content']}"
    end
    return gossips
  end
  
  def self.edit(params)
    existing_file = File.readlines('db/database.json')
    original_gossip = JSON.parse(existing_file[params[0]])
    original_gossip['content'] = params[1]
    existing_file.delete_at(params[0])
    existing_file.insert(params[0], original_gossip.to_json)
    File.open('db/database.json', 'r+') do |f|
      existing_file.each do |line|
      f.write line
      end
    end  
  end
  
  def self.delete(int)
    existing_file = File.readlines('db/database.json')
    existing_file.delete_at(int)
    File.open('db/database.json', 'w') do |f|
      existing_file.each do |line|
      f.write line
      end
    end
  end
end