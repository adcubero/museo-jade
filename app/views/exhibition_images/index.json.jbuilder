json.array!(@exhibition_images) do |exhibition_image|
  json.extract! exhibition_image, :id, :file
  #json.url exhibition_image_url(exhibition_image, format: :json)
end
