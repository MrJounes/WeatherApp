//
//  Endpoint.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

protocol Endpoint {
    var scheme: Scheme { get }
    var host: String { get }
    var path: String { get }
    var queryItems: [String: Any] { get }
    var method: Method { get }
    var headers: [String: String] { get }
}
