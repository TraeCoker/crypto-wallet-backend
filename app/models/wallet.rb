class Wallet < ApplicationRecord
    before_create :set_defaults

    belongs_to :user 
    has_many :snapshots

    def set_defaults
        self.bitcoin = 0
        self.ethereum = 0
        self.binancecoin = 0
        self.tether = 0
        self.cardano = 0
        self.solana = 0
        self.xrp = 0
        self.polkadot = 0
        self.shibainu = 0
        self.dogecoin =0
    end 
end
