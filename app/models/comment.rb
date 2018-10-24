class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  #Set the foreign key so it belongs to itself
  belongs_to :parent, class_name: "Comment"
  has_many :childrens, class_name: "Comment", foreign_key: :parent_id
end
