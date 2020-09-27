//
//  APIWeatherManager.swift
//  WeatherApp
//
//  Created by Игорь Дикань on 27.09.2020.
//  Copyright © 2020 Игорь Дикань. All rights reserved.
//

import Foundation

struct Coordinates{
    let latitude: Double
    let longitude: Double
}

enum ForecastType: FinalProtocolPoint {
    case Current(apiKey: String, coordinates: Coordinates)
    
    var baseURL: URL {
        return URL(string: "http://api.forecast.io")!
    }
    
    var path: String {
        switch self {
        case .Current( let apiKey, let coordinates):
            return "/forecast/\(apiKey)/\(coordinates.latitude), \(coordinates.longitude)"
        }
    }
    
    var request: URLRequest {
        let url = URL(string: path, relativeTo: baseURL)
        return URLRequest(url: url!)
    }
    
}

final class APIWeatherManager: APIManager {
    
    let sessionConfiguration: URLSessionConfiguration
    
    lazy var session: URLSession = {
        return URLSession(configuration: self.sessionConfiguration)
    } ()
    
    let apiKey: String
    
    init(sessionConfiguration: URLSessionConfiguration, apiKey: String) {
        self.sessionConfiguration = sessionConfiguration
        self.apiKey = apiKey
    }
    
    convenience init(apiKey: String) {
        self.init(sessionConfiguration: URLSessionConfiguration.default, apiKey: apiKey)
    }
    
    func fetchCurrentWeatherWith(coordinates: Coordinates, completionHandler: (APIResult<CurrentWeather>) -> Void) {
        let request = ForecastType.Current(apiKey: self.apiKey, coordinates: coordinates)
    }
}
