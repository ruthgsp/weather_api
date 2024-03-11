
# Weather API

A simple Ruby on Rails application to provide weather information for cities. 

## Use Case

With this API, developers can easily retrieve weather data and have real-time weather update for their applications.

* **Weather Apps:** Build apps for weather forecasts, giving users accurate updates worldwide.
* **Travel Apps**: Help travelers plan trips by showing weather forecasts for destinations.
* **Event Planning**: Provide weather forecasts for outdoor events, aiding in preparation.
* **Farming Apps**: Offer weather data for better crop management and decision-making.
* **Smart Homes**: Adjust climate control based on current weather conditions for comfort and efficiency.
* **Fitness Apps**: Recommend workouts or outdoor activities based on the weather.
* **Education**: Teach students about weather with real-world data for analysis and learning.


## Tech Stack

* Ruby 3.3.0
* Rails 7.1.3.2
* Zipkin
* Docker
 
## API Reference

#### Get current weather data

```http
  GET /api/v1/weather?city={city}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `city` | `string` | **Required** name of city |

## Example

```http
  http://localhost:3000/api/v1/weather?city=london
```

## API Response

JSON

```json
{
    "coord": {
        "lon": -0.1257,
        "lat": 51.5085
    },
    "weather": [
        {
            "id": 721,
            "main": "Haze",
            "description": "haze",
            "icon": "50n"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 280.21,
        "feels_like": 279.4,
        "temp_min": 279.73,
        "temp_max": 281.35,
        "pressure": 1000,
        "humidity": 93
    },
    "visibility": 3200,
    "wind": {
        "speed": 1.54,
        "deg": 330
    },
    "clouds": {
        "all": 100
    },
    "dt": 1710126284,
    "sys": {
        "type": 2,
        "id": 2075535,
        "country": "GB",
        "sunrise": 1710138181,
        "sunset": 1710179882
    },
    "timezone": 0,
    "id": 2643743,
    "name": "London",
    "cod": 200
}
```
## Setup Instructions

* Clone this repository

```bash
    cd weather_api
```
* Install gems and run the server

```bash
    bundle install
    rails server
```

### For Opentelemetry
* Run Zipkin using Docker

```bash
    docker run --rm -d -p 9411:9411 --name zipkin openzipkin/zipkin
```
* Open browser

```http
    localhost:9411
```

## API Improvement

* Additional Option to use coordinates
* Get Daily Forecast (e.g., 7days, 10days)
* Get Hourly Forecast
* Get Possible Road Risk
* Historical Weather Data


