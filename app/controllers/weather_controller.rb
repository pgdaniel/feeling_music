class WeatherController < ApplicationController
  def index
  end

  def show
    @forecast = ForecastIO.forecast(37.8267, -122.423)
    render json: @forecast
  end

  def create
    lat = params['lat']
    lng = params['lng']
    @forecast = ForecastIO.forecast(lat, lng)
    render text: @forecast.currently.icon
  end
end
