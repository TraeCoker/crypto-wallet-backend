class WalletsController < ApplicationController
    def update 
        @wallet = Wallet.find(params[:id])
        coin = params[:wallet][:coin]
        total = params[:wallet][:total]

        if params[:wallet][:transaction_type] == "Buy"
            @wallet.increment(coin, total)
        elsif params[:wallet][:transaction_type] == "Sell"
            @wallet.decrement(coin, total)
        end 
        
        @wallet.save
        @snapshot = @wallet.snapshots.last

        render json: { wallet: WalletSerializer.new(@wallet), snapshot: SnapshotSerializer.new(@snapshot)}
    end 


    private 
    def wallet_params
        params.require(:wallet).permit(:id, :coin, :total, :transaction_type)
    end 
end
