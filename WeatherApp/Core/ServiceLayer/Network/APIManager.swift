//
//  APIManager.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

import Foundation

protocol APIManagable {
    func fetchForecast(request: ForecastRequest) async throws -> ForecastResponse
}

final class APIManger {
    private let networkManager: Networkable
    private let decoderManager: Decoderable
    
    init(
        networkManager: Networkable,
        decoderManager: Decoderable
    ) {
        self.networkManager = networkManager
        self.decoderManager = decoderManager
    }
}

extension APIManger: APIManagable {
    func fetchForecast(request: ForecastRequest) async throws -> ForecastResponse {
        let data = try await networkManager.request(.fetchForecast(request: request))
        let result: ForecastResponse = try decoderManager.decode(data: data)
        return result
    }
}
