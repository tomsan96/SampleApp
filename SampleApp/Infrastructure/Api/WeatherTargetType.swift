//
//  WeatherTargetType.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import Moya

protocol WeatherTargetType: TargetType {}

extension WeatherTargetType {
    var baseURL: URL {
        return URL(string: "https://weather.tsukumijima.net/api/forecast")!
    }
    var sampleData: Data {
        return Data()
    }

    var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }

    var validationType: ValidationType {
        return .successCodes
    }
}
