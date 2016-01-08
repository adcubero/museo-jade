class CreateAudioguides < ActiveRecord::Migration
  def change
    create_table :audioguides do |t|
      t.text :description
      t.string :file
      t.string :audio
      t.belongs_to :piece, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
