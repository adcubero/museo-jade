class Exhibition < ActiveRecord::Base
  belongs_to :item
  has_many :pieces
end
