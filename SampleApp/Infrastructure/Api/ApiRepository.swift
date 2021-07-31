//
//  ApiRepository.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import RxSwift
import Moya

final class ApiRepository {
    static let shared = ApiRepository()

    private init() {}

    private let getWeatherInformationProvider = MoyaProvider<WeatherService.GetWeatherInformation>()

    func getWeatjerInformation() -> Single<WeatherModel> {
        return getWeatherInformationProvider.rx.request(WeatherService.GetWeatherInformation()).map(WeatherModel.self)
    }
}
