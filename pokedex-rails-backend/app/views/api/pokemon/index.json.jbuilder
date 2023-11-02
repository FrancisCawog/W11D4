@pokemons.each do |pokemon|
    json.set! pokemon.id do 
        json.extract! pokemon, :id, :number, :name, :captured
        (pokemon.captured == true) ? (json.image_url "/images/unknown.png") : (json.extract! :image_url)
    end 
end 