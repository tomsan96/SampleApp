//
//  CopyrightModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//

struct CopyrightModel: Codable {
    var title: String?
    var link: String?
    var image: ImageModel?
    var provider: [ProviderModel]?
}
