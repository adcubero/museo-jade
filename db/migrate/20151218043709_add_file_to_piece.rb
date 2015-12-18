class AddFileToPiece < ActiveRecord::Migration
  def change
  	add_column :pieces, :file, :string
  end
end
