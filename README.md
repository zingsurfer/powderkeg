# Ski Meow
Module 4 | Contributors: Autumn Martin

## About
### Intro
Powder Keg finds the ski resort with the most ideal conditions for a great powder day! This API provides weather data (snowfall, wind, sunshine, etc.) specific to Colorado ski resorts to help skiers and snowboarders plan their trip to the mountain. It also provides awesome pics of skiers & snowboarders to get users in the zone.

PowderKeg is deployed [here](https://powderkeg.herokuapp.com/).

### Background
PowderKeg is an API which consumes weather data from [DarkSky](https://darksky.net/dev) and [World Weather Online](https://www.worldweatheronline.com/developer/api/ski-weather-api.aspx). PowderKeg is deployed [here](https://powderkeg.herokuapp.com/), and you are looking at its source repository [here](https://github.com/Autumn-Martin/powderkeg). PowderKeg is consumed by my other app, [Ski Meow](https://autumn-martin.github.io/ski_meow/). Ski Meow is a JavaScript single page app that displays weather data for local Ski Resorts. PowderKeg also consumes data from [Unsplash](https://unsplash.com/developers), which Ski Meow uses to feature a random image for the background.

#### Tech Stack
Rails 5.2.1, Ruby 2.5.1, RSpec, PostgreSQL, Faraday

## Endpoints

## Random image related to search words
### GET **/api/v1/images?query=#{search_params}**
Request:
```
GET /api/v1/images?query=ski,snowboard
Content-Type: application/json
Accept: application/json
```

Response:
![](https://user-images.githubusercontent.com/36902512/48084951-3daf5b80-e1b6-11e8-9513-93b1f58e96ea.png)

## Weather data based on resort name
### GET **/api/v1/snowcast?location=#{resort.name}**
Request:
```
GET /api/v1/snowcast?location=crested_butte
Content-Type: application/json
Accept: application/json
```

Response:
![](https://user-images.githubusercontent.com/36902512/48085466-93d0ce80-e1b7-11e8-9155-9dcfa59e4728.png)

## Register
### POST **/api/v1/users**
Request:
```
POST /api/v1/users
Content-Type: application/json
Accept: application/json

{
  "email": "example@email.com",
  "password": "password"
  "password_confirmation": "password"
}
```

Response:
```
status: 201
body:

{
  "api_key": "asd8987dfajskdl238j23h",
}
```

## Log In
### POST **/api/v1/sessions**
Request:
```
POST /api/v1/sessions
Content-Type: application/json
Accept: application/json

{
  "email": "example@email.com",
  "password": "password"
}
```

Response:
```
status: 200
body:

{
  "api_key": "uio1423dfaj234l238j45z",
}
```

## Getting started

### Production
This app has been deployed to Heroku. It may be viewed in production here: https://powderkeg.herokuapp.com/

### Development
First, clone this repository via `git clone git@github.com:Autumn-Martin/powderkeg.git`.

Run `rails g figaro` to create a application.yml file to hold your API keys that will be gitignored. You will need API keys from DarkSky, World Weather Service, & Unplash.

You will also need the Rails application's secret key (`Rails.application.credentials.secret_key_base`). More info about this [here](https://medium.com/craft-academy/encrypted-credentials-in-ruby-on-rails-9db1f36d8570)

Install the required gems for this application using [Bundler](http://bundler.io/). Run `bundle` in the CLI.

Run `rake db:setup` to create the database, build tables and columns based the schema, & seed the data.

Start a server with `rails s`.

Now view the app locally in development by visiting `http://localhost:3000/` in your browser.

### Testing

The test suite is created through RSpec. To run this test suite, run `rspec`. Currently, this repo maintains 100% test coverage.

![](https://user-images.githubusercontent.com/36902512/48153172-db705c80-e282-11e8-9b49-f2df86b0427e.png)
