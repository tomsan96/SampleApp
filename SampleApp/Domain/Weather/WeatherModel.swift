//
//  WeatherModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//
import Foundation

struct WeatherModel: Codable {
    var publicTime: Date?
    var publicTimeFormatted: String?
    var publishingOffice: String?
    var title: String?
    var link: URL?
    var description: DescriptionModel?
    var forecasts: [ForecastsModel]?
    var location: LocationModel?
    var copyright: CopyrightModel?

}

extension WeatherModel {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let publicTimeString = try container.decode(String.self, forKey: .publicTime)
        guard let date = ISO8601DateFormatter().date(from: publicTimeString) else {
            throw DecodingError.typeMismatch(Date.self, .init(codingPath: [], debugDescription: "Failed to convert date."))
        }
        publicTime = date
        publicTimeFormatted = try container.decode(String.self, forKey: .publicTimeFormatted)
        publishingOffice = try container.decode(String.self, forKey: .publishingOffice)
        title = try container.decode(String.self, forKey: .title)
        link = try container.decode(URL.self, forKey: .link)
        description = try container.decode(DescriptionModel.self, forKey: .description)
        forecasts = try container.decode([ForecastsModel].self, forKey: .forecasts)
        location = try container.decode(LocationModel.self, forKey: .location)
        copyright = try container.decode(CopyrightModel.self, forKey: .copyright)
    }
}
