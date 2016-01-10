class AddFileToAudioguides < ActiveRecord::Migration
  def change
    add_column :audioguides, :file, :string
  end
end
