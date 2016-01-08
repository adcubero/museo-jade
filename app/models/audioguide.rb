class Audioguide < ActiveRecord::Base
  mount_uploader :file, FileUploader
  mount_uploader :audio, FileUploader
  belongs_to :piece
end
