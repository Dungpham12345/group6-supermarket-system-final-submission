json.extract! membership, :id, :mem_ID, :mem_name, :gender, :date_of_birth, :contact, :address, :created_at, :updated_at
json.url membership_url(membership, format: :json)
