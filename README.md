# BigchainDB Driver in Ruby
A Ruby version of BigchainDB Driver.

## Examples
### Initialize a BigchainDB driver instance
```ruby
require 'bigchaindb_driver'

driver = BigchaindbDriver::Driver.new('https://test.bigchaindb.com/api/v1')
```

### A owner creates an asset
```ruby
owner = BigchaindbDriver::Utils.generate_keypair
asset = driver.Asset.create(
  asset: {
    bicycle: {
      model: 'CONTEND 1',
      manufacturer: 'Giant',
      country: 'Republic of China (Taiwan)'
    }
  },
  metadata: { what: 'Create my first asset in BigchainDB' },
  owner_public_key: owner.public_key,
  owner_private_key: owner.private_key
)
```

### A owner transfers an asset to another user
```ruby
anotherUser = BigchaindbDriver::Utils.generate_keypair
transaction = driver.Transaction.create(
  asset: asset,
  metadata: { what: 'Create my first asset in BigchainDB' },
  action: 'TRANSFER',
  receiver_public_key: anotherUser.public_key,
  owner_private_key: owner.private_key
)
```

### View a transaction
```ruby
transaction = driver.Transaction.where(id: 'the_transaction_id').first
```

### View an asset
```ruby
asset = driver.Asset.where(keyword: 'Taiwan').first
```
