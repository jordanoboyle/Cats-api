# json.extract! cat, :id, :created_at, :updated_at
# json.url cat_url(cat, format: :json)

json.id cat.id
json.name cat.name
json.color cat.color
json.weight cat.weight
json.price cat.price
json.created_at cat.created_at
json.updated_at cat.updated_at