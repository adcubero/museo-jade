class AddColumnsToAudioguide < ActiveRecord::Migration
  def change
    add_column :audioguides, :key, :string
    add_column :audioguides, :id1, :integer
    add_column :audioguides, :id2, :integer
  end
end
