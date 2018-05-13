require File.dirname(__FILE__) + '/asset'

class BigchaindbDriver::Driver
  def initialize(bdb_root_url)
    @bdb_root_url = bdb_root_url
  end

  def Asset
    Asset.new(@bdb_root_url)
  end
end
