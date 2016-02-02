class CreatePieceInforms < ActiveRecord::Migration
  def change
    create_table :piece_informs do |t|
      t.string :name
      t.string :description
      t.string :language
      t.belongs_to :piece, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
