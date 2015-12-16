class Item < ActiveRecord::Base
	has_many :exhibitions
	has_many :pieces
end
