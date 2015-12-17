class Exhibition < ActiveRecord::Base
  belongs_to :item
  has_many :pieces
  has_many :exhibition_images
end
