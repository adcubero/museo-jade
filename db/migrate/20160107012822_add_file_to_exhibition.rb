class AddFileToExhibition < ActiveRecord::Migration
  def change
  	add_column :exhibitions, :file, :string
  end
end
