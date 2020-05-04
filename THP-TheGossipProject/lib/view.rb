class View
  def new_gossip
    puts "--- Gossip creation interface ---"
    print "| What's your name ? : "
    author = gets.chomp
    print "| What's your crunchy story ? : "
    content = gets.chomp
    return params = {'author' => author, 'content' => content}
  end
  
  def index_gossips(arr)
    arr.each do |gossip|
      puts gossip
    end
  end
  
  def edit_gossip
    print "Which gossip would you like to edit ? : "
    line = gets.chomp.to_i
    print "| Enter the modified content : "
    content = gets.chomp
    return params = [line, content]
  end
  
  def delete_gossip
    print "Which gossip would you like to delete ? : "
    return gets.chomp.to_i
  end
  
end