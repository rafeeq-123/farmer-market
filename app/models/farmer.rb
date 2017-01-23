class Farmer < ApplicationRecord
  # attr_accessor :avatar_file_name
  belongs_to :user
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '600x600#',
    medium: '300x300>'
  }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end
