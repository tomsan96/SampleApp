//
//  WeatherViewModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//

import RxSwift
import Moya

class WeatherViewModel {
    private let disposeBag: DisposeBag = DisposeBag()
    let getWeatherInformationSubject = PublishSubject<(WeatherModel?, Error?)>()

    func getWeatherInformation() {
        _ = ApiRepository.shared.getWeatjerInformation().asObservable().subscribe(onNext: { (weatherModel) in
            self.getWeatherInformationSubject.onNext((weatherModel, nil))
            }, onError: { (error) in
                do {
                    let errorResponse = error as? Moya.MoyaError
                    if let body = try errorResponse?.response?.mapJSON() {
                        print(body)
                        print("---")
                        print(error)

                    }
                } catch {
                    print(error)
                }
            }
        )
        .disposed(by: disposeBag)
    }
}
