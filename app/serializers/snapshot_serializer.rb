class SnapshotSerializer < ActiveModel::Serializer
  attributes :id, :bitcoin, :ethereum, :tether, :cardano, :solana, :unix
end
