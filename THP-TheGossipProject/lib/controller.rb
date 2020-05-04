require 'gossip'
require 'view'

class Controller
  def initialize
    @view = View.new
  end
  
  def new_gossip
    params = @view.new_gossip
    gossip = Gossip.new(params['author'], params['content'])
    gossip.save
  end
  
  def index_gossips
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
  end
  
  def edit_gossip
    self.index_gossips
    params = @view.edit_gossip
    Gossip.edit(params)
  end
  
  def delete_gossip
    self.index_gossips
    params = @view.delete_gossip
    Gossip.delete(params)
  end
end