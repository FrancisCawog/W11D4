json.extract! @pokemon, :id, :number, :name, :captured, :created_at, :updated_at
(@pokemon.captured == true) ? (json.image_url "/images/unknown.png") : (json.extract! :image_url)

json.moves @pokemon.moves.pluck(:name)
json.type @pokemon.poke_type