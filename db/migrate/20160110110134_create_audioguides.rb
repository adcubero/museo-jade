class CreateAudioguides < ActiveRecord::Migration
  def change
    create_table :audioguides do |t|
      t.string :name
      t.string :description
      t.text :text
      t.string :audio
      t.belongs_to :exhibition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
