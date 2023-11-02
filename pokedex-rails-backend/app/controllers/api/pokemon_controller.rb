class Api::PokemonController < ApplicationController
    def types 
        types = Pokemon::TYPES
        render json: types
    end 

    def index 
        @pokemons = Pokemon.all
        render :index
    end 

    def show 
        @pokemon = Pokemon.find_by(id: params[:id])
        if @pokemon 
            render :show
        else
            render json: "Pokemon #{params[:id]} does not exist", status: 404
        end 
    end 
end
