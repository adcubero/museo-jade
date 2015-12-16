json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :id, :name, :description, :miniDescription, :item_id
  json.url exhibition_url(exhibition, format: :json)
end
