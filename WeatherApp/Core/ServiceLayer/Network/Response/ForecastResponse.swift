//
//  ForecastResponse.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

struct ForecastResponse: Decodable {
    let fact: ForecasrFact
    let forecasts: [ForecastInfo]
}

struct ForecasrFact: Decodable {
    let temp: Double
    let feels_like: Double
}

struct ForecastInfo: Decodable {
    let sunrise: String
    let sunset: String
}
