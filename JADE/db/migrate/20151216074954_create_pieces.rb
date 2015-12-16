class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.text :description
      t.string :room
      t.string :showcase
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
