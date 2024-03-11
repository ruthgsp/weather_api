require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/instrumentation/faraday'
require 'opentelemetry/instrumentation/rails'
require 'opentelemetry/exporter/zipkin'

ENV['OTEL_TRACES_EXPORTER'] = 'zipkin'


OpenTelemetry::SDK.configure do |c|
  c.service_name = 'weather-api'
  c.use_all
end

WeatherApiTracer = OpenTelemetry.tracer_provider.tracer('weather-api', '1.0')
