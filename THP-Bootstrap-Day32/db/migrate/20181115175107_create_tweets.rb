class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :nickname
      t.integer :message

      t.timestamps
    end
  end
end
