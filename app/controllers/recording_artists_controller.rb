class RecordingArtistsController < ApplicationController
  def new
    @recording_artist = RecordingArtist.new
  end

  def create
    artist_name = params[:recording_artist][:name]
    @result = MusicBrainz::Artist.find_by_name(artist_name)
    @itunes = ITunesSearchAPI.search(:term => "#{artist_name}", :country => "US", :media => "music")
    render json: @itunes
  end
end
