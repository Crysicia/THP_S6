class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.integer :parent_id
      t.string :comment
      t.timestamps
    end
    #Add a foreign key to comments at the column parent_id
    add_foreign_key :comments, column: :parent_id, primary_key: :id
  end
end
