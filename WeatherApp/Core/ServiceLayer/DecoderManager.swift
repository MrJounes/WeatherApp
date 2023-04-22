//
//  DecoderManager.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

import Foundation

protocol Decoderable {
    func decode<T: Decodable>(data: Data) throws -> T
}

final class DecoderManager {}

extension DecoderManager: Decoderable {
    func decode<T: Decodable>(data: Data) throws -> T {
        try JSONDecoder().decode(T.self, from: data)
    }
}
