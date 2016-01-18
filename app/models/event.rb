class Event < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
