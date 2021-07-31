//
//  ViewController.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import UIKit

class ViewController: UIViewController, TransitionProtocol {

    @IBOutlet weak var weatherApiButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherApiButton.addTarget(self, action: #selector(self.moveToWeatherApi), for: .touchUpInside)

    }
    @objc private func moveToWeatherApi() {
        transitionWeather()
    }

}
