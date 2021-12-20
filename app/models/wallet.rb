class Wallet < ApplicationRecord
    before_create :set_defaults
    after_save :create_snapshot

    belongs_to :user 
    has_many :snapshots

    def set_defaults
        self.bitcoin = 0
        self.ethereum = 0
        self.tether = 0
        self.cardano = 0
        self.solana = 0
    end 

    def create_snapshot
        #bitcoin = current_prices["bitcoin"] * self.bitcoin
        #ethereum = current_prices["ethereum"] * self.ethereum
        #tether = current_prices["tether"] * self.tether 
        #cardano = current_prices["cardano"] * self.cardano
        #colana = current_prices["solana"] * self.solana
        now = Time.now.to_i * 1000

        snapshot = self.snapshots.build(bitcoin: self.bitcoin, ethereum: self.ethereum, 
                    tether: self.tether, cardano: self.cardano, 
                    solana: self.solana, unix: now)
        snapshot.save
    end 

end
