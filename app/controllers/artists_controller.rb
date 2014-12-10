class ArtistsController < ApplicationController
  LAST_FM_KEY = 'ae6927ec744c456ffeec81f01b4db60d'
  LAST_FM_SECRET = '1bafc3de1560d1e46a8cbac32b47fd4e'
  
  def index
    @artist = RecordingArtist.new
  end

  def show
    response = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Fall+Out+Boy&api_key=#{LAST_FM_KEY}&format=json")
    @artist = JSON.parse(response.body)['artist']
  end
end
