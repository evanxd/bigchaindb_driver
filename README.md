# BigchainDB Driver in Ruby
A Ruby version of BigchainDB Driver.

## Example: Create a transaction
```ruby
require 'bigchaindb_driver'

connection = BigchaindbDriver::Connection.new('http://bigchaindb-server.com')

alice = BigchaindbDriver::Utils.generate_keypair
transaction = BigchaindbDriver::Transaction.new(
  # Define an asset to store.
  {
    country: 'Republic of China (Taiwan)',
    world_happiness_ranking: 26,
    world_happiness_index: 6.441,
    year: 2018
  },
  # Metadata (optional).
  { what: 'My first BigchainDB transaction' },
  'CREATE',
  alice.public_key,
)
transaction.sign(alice.private_key)

connection.send(transaction)
```
