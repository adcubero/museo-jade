json.array!(@audioguides) do |audioguide|
  json.extract! audioguide, :id, :description, :file, :audio, :piece_id
  json.url audioguide_url(audioguide, format: :json)
end
