//
//  ForecastsModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//

struct ForecastsModel: Codable {
    var date: String?
    var dateLabel: String?
    var telop: String?
    var detail: ForecastsDetailModel?
    var temperature: TemperatureModel?
    var chanceOfRain: ChanceOfRainModel?
    var image: ImageModel?

}
