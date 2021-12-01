class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_one :wallet
  has_many :snapshots, through: :wallet
end
