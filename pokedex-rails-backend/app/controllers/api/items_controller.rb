class Api::ItemsController < ApplicationController
    def destroy
        @item = Item.find_by(id: params[:id])

        if @item.destroy
            render json: @item.id
        else
            render json: "Item #{params[:id]} does not exist", status: 404
        end
    end
end
