json.extract! product, :id, :name, :price, :description, :sku, :in_inventory, :available, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
