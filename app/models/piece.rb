class Piece < ActiveRecord::Base
  belongs_to :item
  belongs_to :exhibition
end
