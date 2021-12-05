class Wallet < ApplicationRecord
    before_create :set_defaults

    belongs_to :user 
    has_many :snapshots

    def set_defaults
        self.bitcoin = 0
        self.ethereum = 0
        self.tether = 0
        self.cardano = 0
        self.solana = 0
    end 

    def calculate_snapshot(current_prices)
        
    end 

end
