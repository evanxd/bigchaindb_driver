require 'json'
require 'net/http'

class Asset
  def initialize(bdb_root_url)
    @bdb_root_url = bdb_root_url
  end

  def where(keyword: nil)
    uri = URI("#{@bdb_root_url}/assets?search=#{keyword}")
    data = Net::HTTP.get(uri)
    JSON.parse(data)
  end
end
