json.array!(@audioguide_informs) do |audioguide_inform|
  json.extract! audioguide_inform, :id, :name, :description, :text, :audioguide_id
  json.url audioguide_inform_url(audioguide_inform, format: :json)
end
