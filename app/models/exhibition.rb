class Exhibition < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :item
  has_many :pieces
  has_many :exhibition_images
  has_many :audioguides
end
