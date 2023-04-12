json.extract! supplier, :id, :sup_name, :contact, :address, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
