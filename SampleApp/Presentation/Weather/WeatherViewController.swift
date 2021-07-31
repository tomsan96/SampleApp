//
//  WeatherViewController.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import UIKit
import  RxSwift

class WeatherViewController: UIViewController {

    @IBOutlet weak var callApiButton: UIButton!

    private var viewModel: WeatherViewModel? = WeatherViewModel()

    private let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        callApiButton.addTarget(self, action: #selector(self.callApi), for: .touchUpInside)
    }

    private func bind() {
        _ = viewModel?.getWeatherInformationSubject.asObserver().subscribe(onNext: { (response, error) in
            if let error = error {
                print(error)
                return
            }
            print(response)
        })
        .disposed(by: disposeBag)
    }

    @objc private func callApi() {
        viewModel?.getWeatherInformation()
    }

}
