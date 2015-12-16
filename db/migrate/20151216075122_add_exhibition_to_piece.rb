class AddExhibitionToPiece < ActiveRecord::Migration
  def change
  	add_reference :pieces, :exhibition, index: true, foreign_key: true
  end
end
