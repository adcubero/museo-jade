class Piece < ActiveRecord::Base
  mount_uploader :file, FileUploader
  mount_uploader :audio, FileUploader
  belongs_to :item
  belongs_to :exhibition
  has_many :audioguides
end
