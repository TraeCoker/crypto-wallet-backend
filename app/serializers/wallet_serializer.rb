class WalletSerializer < ActiveModel::Serializer
  attributes :id, :bitcoin, :ethereum, :tether, :cardano, :solana

  has_many :snapshots
end
