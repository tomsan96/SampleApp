//
//  ChanceOfRainModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//

struct ChanceOfRainModel: Codable {
    var t0006: String?
    var t0612: String?
    var t1218: String?
    var t1824: String?

    enum CodingKeys: String, CodingKey {
        case t0006 = "T00_06"
        case t0612 = "T06_12"
        case t1218 = "T12_18"
        case t1824 = "T18_24"
    }
}
