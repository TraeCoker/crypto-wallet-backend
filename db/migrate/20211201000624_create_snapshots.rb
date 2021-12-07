class CreateSnapshots < ActiveRecord::Migration[6.1]
  def change
    create_table :snapshots do |t|
      t.integer :wallet_id
      t.decimal :bitcoin
      t.decimal :ethereum
      t.decimal :tether
      t.decimal :cardano
      t.decimal :solana
      t.integer :unix

      t.timestamps
    end
  end
end
