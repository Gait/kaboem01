json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :customer_id
  json.url dog_url(dog, format: :json)
end
