class Farmer < ApplicationRecord
  attr_accessor :avatar_file_name
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :avatar, 
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  

end
