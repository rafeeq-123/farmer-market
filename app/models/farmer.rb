class Farmer < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '600x600#',
    medium: '300x300>'
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end
