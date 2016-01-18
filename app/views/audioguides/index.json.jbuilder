json.array!(@audioguides) do |audioguide|
  json.extract! audioguide, :id, :name, :description, :text, :audio, :exhibition_id, :file, :key, :id1, :id2
end
