json.set! :data do
  json.array! @costumers do |costumer|
    json.partial! 'costumers/costumer', costumer: costumer
    json.url  "
              #{link_to 'Show', costumer }
              #{link_to 'Edit', edit_costumer_path(costumer)}
              #{link_to 'Destroy', costumer, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end