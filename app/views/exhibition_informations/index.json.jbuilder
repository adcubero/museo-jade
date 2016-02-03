json.array!(@exhibition_informations) do |exhibition_information|
  json.extract! exhibition_information, :id, :name, :description, :miniDescription, :language, :exhibition_id
  json.extract! exhibition_information.exhibition, :file
end

