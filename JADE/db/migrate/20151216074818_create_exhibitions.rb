class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.text :description
      t.string :miniDescription
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
