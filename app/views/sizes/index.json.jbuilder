json.array!(@sizes) do |size|
  json.extract! size, :name, :code, :category_id
  json.url size_url(size, format: :json)
end
