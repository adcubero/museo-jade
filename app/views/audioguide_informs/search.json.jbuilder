json.array!(@audioguide_informs) do |audioguide_inform|
  json.extract! audioguide_inform, :id, :name, :description, :text, :audioguide_id
  json.extract! audioguide_inform.audioguide, :file, :audio
end
