//
//  TransitionProtocol.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import UIKit

protocol TransitionProtocol: AnyObject {
    func transitionWeather()
}

extension TransitionProtocol where Self: UIViewController {
    func transitionWeather() {
        guard let viewController: UIViewController = R.storyboard.weather.weather() else { return sendError() }
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    private func sendError() {
        print("Not sendding")
    }
}
