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

    def calculate_snapshot
        #bitcoin = current_prices["bitcoin"] * self.bitcoin
        #ethereum = current_prices["ethereum"] * self.ethereum
        #tether = current_prices["tether"] * self.tether 
        #cardano = current_prices["cardano"] * self.cardano
        #colana = current_prices["solana"] * self.solana

        snapshot = self.snapshots.build(bitcoin: bitcoin, ethereum: ethereum, tether: tether, cardano: cardano, solana: solana)
        snapshot.save
    end 

end
