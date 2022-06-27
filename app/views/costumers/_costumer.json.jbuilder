json.extract! costumer, :id, :name, :adress, :state, :payment_prefer, :total_spent, :created_at, :updated_at
json.url costumer_url(costumer, format: :json)
