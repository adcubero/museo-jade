class CreateExhibitionInformations < ActiveRecord::Migration
  def change
    create_table :exhibition_informations do |t|
      t.string :name
      t.string :description
      t.string :miniDescription
      t.string :language
      t.belongs_to :exhibition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
