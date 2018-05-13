# BigchainDB Driver in Ruby
A Ruby version of BigchainDB Driver.

## Examples
### Initialize a BigchainDB driver instance
```ruby
require 'bigchaindb_driver'

driver = BigchaindbDriver::Driver.new('https://test.bigchaindb.com/api/v1')
```

### evanxd commits a `CREATE` transaction to create a bicycle asset
```ruby
evanxd = BigchaindbDriver::Utils.generate_keypair
driver.Transaction.create(
  asset: {
    bicycle: {
      model: 'CONTEND 1',
      manufacturer: 'Giant',
      country: 'Republic of China (Taiwan)'
    }
  },
  metadata: { what: 'Create my first asset in BigchainDB' },
  action: 'CREATE',
  public_key: evanxd.public_key,
  private_key: evanxd.private_key
)
```

### View an asset
```ruby
asset = driver.Asset.where(keyword: 'Taiwan').first
```
