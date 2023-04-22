//
//  ForecastRequest.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

import Foundation

struct ForecastRequest: Encodable {
    let lat: Double
    let lon: Double
}
