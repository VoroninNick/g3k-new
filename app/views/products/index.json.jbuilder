json.array!(@products) do |product|
  json.extract! product, :name, :image, :short_description, :description, :price, :product_code, :parent_category_id
  json.url product_url(product, format: :json)
end
