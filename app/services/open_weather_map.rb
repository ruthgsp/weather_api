class OpenWeatherMap

  def initialize
    @conn = Faraday.new(
      url: 'https://api.openweathermap.org',
      params: { appid: '98f1241595da30c99d58540acfe37238' }
    )
  end

  def get_by_city(city)
    WeatherApiTracer.in_span('get_by_city') do |span|
      response = @conn.get('/data/2.5/weather', { q: city }) do |request|
        OpenTelemetry.propagation.inject(request.headers)
      end
      span.set_attribute('http.url', response.env.url.to_s)
      span.set_attribute('http.status_code', response.status)

      response
    end
    
  end
end