class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :file

      t.timestamps null: false
    end
  end
end
