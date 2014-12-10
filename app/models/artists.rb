class Artist
  include HTTParty
  base_uri ''

  def initialize(service, page)
    @options = { query: {site: service, page: page} }
  end

  def artists
  end
end
