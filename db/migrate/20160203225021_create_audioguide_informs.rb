class CreateAudioguideInforms < ActiveRecord::Migration
  def change
    create_table :audioguide_informs do |t|
      t.string :name
      t.string :description
      t.text :text
      t.string :language
      t.belongs_to :audioguide, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
