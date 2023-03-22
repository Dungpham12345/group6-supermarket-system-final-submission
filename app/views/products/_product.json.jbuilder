json.extract! product, :id, :product_code, :product_name, :category, :price, :supplier_ID_id, :subcategory, :created_at, :updated_at
json.url product_url(product, format: :json)
