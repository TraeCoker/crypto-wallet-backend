class CreateWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :wallets do |t|
      t.integer :user_id
      t.decimal :bitcoin
      t.decimal :ethereum
      t.decimal :tether
      t.decimal :cardano
      t.decimal :solana



      t.timestamps
    end
  end
end
