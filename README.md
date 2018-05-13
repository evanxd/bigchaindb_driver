# BigchainDB Driver in Ruby
A Ruby version of BigchainDB Driver.

## Examples
### Create a transaction
```ruby
require 'bigchaindb_driver'

driver = BigchaindbDriver::Driver.new('http://bigchaindb-server.com')

alice = BigchaindbDriver::Utils.generate_keypair
driver.Transaction.create(
  asset: {
    country: 'Republic of China (Taiwan)',
    world_happiness_ranking: 26,
    world_happiness_index: 6.441,
    year: 2018
  },
  metadata: { what: 'Create my first asset in BigchainDB' },
  action: 'CREATE',
  public_key: alice.public_key,
  private_key: alice.private_key
)
```
