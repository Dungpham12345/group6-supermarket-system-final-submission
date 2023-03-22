json.extract! sale, :id, :product_code_id, :staff_ID_id, :date, :quantity, :price, :grand_total, :created_at, :updated_at
json.url sale_url(sale, format: :json)
