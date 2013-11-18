json.array!(@category_sizes) do |category_size|
  json.extract! category_size, :category_id, :size_id
  json.url category_size_url(category_size, format: :json)
end
