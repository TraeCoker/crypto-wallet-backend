class SnapshotSerializer < ActiveModel::Serializer
  attributes :id, :bitcoin, :ethereum, :binancecoin, :tether, :cardano, :solana, :xrp, :polkadot, :shibainu, :dogecoin, :created_at
end
