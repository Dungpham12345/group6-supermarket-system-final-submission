json.extract! product, :id, :product_name, :category, :price, :supplier_id, :subcategory, :origin, :size, :created_at, :updated_at
json.url product_url(product, format: :json)
