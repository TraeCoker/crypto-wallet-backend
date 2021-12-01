class User < ApplicationRecord
  after_create :create_wallet
  has_one :wallet
  has_many :snapshots, through: :wallet
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  def create_wallet
    Wallet.create(user_id: self.id)
  end

end
