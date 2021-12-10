class WalletsController < ApplicationController
    def update 
        @wallet = Wallet.find(params[:id])
        coin = params[:wallet][:coin]
        total = params[:wallet][:total]
        @wallet.increment(coin, total)
        @wallet.save
        @snapshot = @wallet.snapshots.last

        render json: { wallet: WalletSerializer.new(@wallet), snapshot: SnapshotSerializer.new(@snapshot)}
    end 


    private 
    def wallet_params
        params.require(:wallet).permit(:id, :coin, :total)
    end 
end
