class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :adult
      t.integer :child
      t.integer :student
      t.integer :elder
      t.date :date
      t.integer :code

      t.timestamps null: false
    end
  end
end
