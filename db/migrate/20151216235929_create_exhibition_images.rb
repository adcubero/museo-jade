class CreateExhibitionImages < ActiveRecord::Migration
  def change
    create_table :exhibition_images do |t|
      t.string :file

      t.timestamps null: false
    end
  end
end
