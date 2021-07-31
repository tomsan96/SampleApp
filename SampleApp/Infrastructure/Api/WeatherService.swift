//
//  WeatherService.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import Moya

class WeatherService {}

extension WeatherService {
    struct GetWeatherInformation: WeatherTargetType {
        var path: String { return "/city/130010"}
        var task: Task { return .requestPlain }
        var method: Moya.Method { return .get }

    }
}
