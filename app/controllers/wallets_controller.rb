class WalletsController < ApplicationController
    def update 
        @wallet = Wallet.find(params[:id])
        coin = params[:wallet][:coin]
        total = params[:wallet][:total]
        @wallet.increment(coin, total)
        @wallet.save

        render json: @wallet, include: :snapshots
    end 


    private 
    def wallet_params
        params.require(:wallet).permit(:id, :coin, :total)
    end 
end
