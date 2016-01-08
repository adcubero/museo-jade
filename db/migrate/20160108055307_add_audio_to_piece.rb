class AddAudioToPiece < ActiveRecord::Migration
  def change
  	add_column :pieces, :audio, :string
  end
end
