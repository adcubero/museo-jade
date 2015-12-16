json.array!(@pieces) do |piece|
  json.extract! piece, :id, :name, :description, :room, :showcase, :item_id
  json.url piece_url(piece, format: :json)
end
