class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title
      t.text :body
      t.belongs_to :course, index: true
      t.timestamps
    end
  end
end
