
class CoinsController < ApplicationController
    

    def index 
        @coins = Coin.all
        render json: @coins
    end

    def show
        @coin = Coin.find_by(id: params[:id])
        render json: @coin, status: :ok
    end

 
    def create 
        @coin = Coin.new(name: params[:name], value: params[:value])
        
        if @coin.save!
            @coin.count +=1
            render json: @coin, status: :ok
        else
            render json: "error", status: :bad_request
        end

    end


    def destroy 
        @coin = Coin.find_by(id: params[:id])
        if @coin
            @coin.count -=1  
            @coin.destroy if @coin.count = 0
            redirect_to coins_url
        end
    end

    def update
        @coin = Coin.find_by(id: params[:id])
        @coin.update(name: params[:name], id: params[:id])
        render json: @coin 
    end

    def available
        render json: Coin.total
    end

    private

        def coin_params
            params.require(:coin).permit(:name, :value)
        end


end
