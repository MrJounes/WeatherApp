//
//  APIWeatherManager.swift
//  WeatherApp
//
//  Created by Игорь Дикань on 27.09.2020.
//  Copyright © 2020 Игорь Дикань. All rights reserved.
//

import Foundation

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
}
