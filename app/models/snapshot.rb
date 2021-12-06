class Snapshot < ApplicationRecord
    before_create :set_unix, :calculate_total
    belongs_to :wallet

    def set_unix
        self.unix = Time.now.to_i * 1000
    end 

    def calculate_total
        self.total = self.bitcoin + self.ethereum + self.tether + self.cardano + self.solana
    end 
    
end
