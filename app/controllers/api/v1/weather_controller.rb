module Api
  module V1

    class WeatherController < ApplicationController

      def weather
        open_weather_map = OpenWeatherMap.new
        response = open_weather_map.get_by_city(query_params)
        render json: response.body
      end

      private

      def query_params
        params.require(:city)
      end
    end

  end
end