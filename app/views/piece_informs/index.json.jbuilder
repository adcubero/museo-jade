json.array!(@piece_informs) do |piece_inform|
  json.extract! piece_inform, :id, :name, :description, :language, :piece_id
  json.extract! piece_inform.piece, :file
end
