debugger
@pokemons.each do |pokemon|
    json.set! pokemon.id do 
        json.array! pokemon, :id, :number, :name, :image_url, :captured
    end 
end 
