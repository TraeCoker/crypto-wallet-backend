# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(name: "bob", email: "bob@bob.com", password: "1234")
Snapshot.first.update(unix: 1638149555000)
bob.wallet.snapshots.build(bitcoin: 0, ethereum: 0, tether: 0, cardano: 0, solana: 0, unix: 1638235955000 ).save
bob.wallet.snapshots.build(bitcoin: 500, ethereum: 400, tether: 50, cardano: 100, solana: 200, unix: 1638235955000 ).save
