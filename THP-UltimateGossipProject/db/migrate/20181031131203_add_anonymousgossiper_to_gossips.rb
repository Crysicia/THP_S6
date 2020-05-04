class AddAnonymousgossiperToGossips < ActiveRecord::Migration[5.2]
  def change
    change_table :gossips do |t|
      t.string :anonymous_gossiper
    end
  end
end
