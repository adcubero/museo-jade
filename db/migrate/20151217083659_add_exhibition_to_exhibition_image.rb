class AddExhibitionToExhibitionImage < ActiveRecord::Migration
  def change
  	add_reference :exhibition_images, :exhibition, index: true, foreign_key: true
  end
end
