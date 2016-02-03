class Audioguide < ActiveRecord::Base
  mount_uploader :audio, FileUploader
  mount_uploader :file, FileUploader
  belongs_to :exhibition
  has_many :audioguide_informs
end
