class WalletSerializer < ActiveModel::Serializer
  attributes :id, :bitcoin, :ethereum, :binancecoin, :tether, :cardano, :solana, :xrp, :polkadot, :shibainu, :dogecoin
  
  has_many :snapshots
end
