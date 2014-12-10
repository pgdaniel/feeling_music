class WeatherController < ApplicationController
  def show
    @forecast = ForecastIO.forecast(37.8267, -122.423)
    render json: @forecast
  end
end
