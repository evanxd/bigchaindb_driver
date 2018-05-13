# BigchainDB Driver in Ruby
A Ruby version of BigchainDB Driver.

## Examples
### Commit a `CREATE` transaction to create an asset
```ruby
require 'bigchaindb_driver'

driver = BigchaindbDriver::Driver.new('http://bigchaindb-server.com')

alice = BigchaindbDriver::Utils.generate_keypair
driver.Transaction.create(
  asset: {
    bicycle: {
      model: 'CONTEND 1',
      manufacturer: 'Giant Manufacturing Co. Ltd.',
      country: 'Taiwan'
    }
  },
  metadata: { what: 'Create my first asset in BigchainDB' },
  action: 'CREATE',
  public_key: alice.public_key,
  private_key: alice.private_key
)
```

### View an asset
```ruby
asset = driver.Asset.where(keyword: 'Taiwan').first
```
