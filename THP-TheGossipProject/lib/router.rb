require 'controller'

class Router
  def initialize
    @controller = Controller.new
  end
  
  def perform
    puts "--- Welcome to the gossip project ---"
    loop do
      puts '| Choose something to do :'
      puts '| 1) Create a gossip'
      puts '| 2) Show every gossips'
      puts '| 3) Edit a gossip'
      puts '| 4) Remove a gossip'
      puts '| 5) Exit'
      print '> '
      case gets.chomp.to_i
      when 1
        system "clear"
        @controller.new_gossip
      when 2
        system "clear"
        @controller.index_gossips
      when 3
        system "clear"
        @controller.edit_gossip
      when 4
        system "clear"
        @controller.delete_gossip
      when 5
        puts "Exiting..."
        break
      else
        system "clear"
        puts "Please enter a valid option."
      end
    end
  end
end