json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :id, :name, :description, :miniDescription, :item_id, :file
end
