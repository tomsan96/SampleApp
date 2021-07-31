//
//  ImageModel.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//
import Foundation

struct ImageModel: Codable {
    var title: String?
    var link: URL?
    var url: URL?
    var width: Int?
    var height: Int?
}
