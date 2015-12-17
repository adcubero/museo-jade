class ExhibitionImage < ActiveRecord::Base
	mount_uploader :file, FileUploader
	belongs_to :exhibition
end
