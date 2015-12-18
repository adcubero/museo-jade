class Piece < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :item
  belongs_to :exhibition
end
