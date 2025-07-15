//
//  ApodImage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import Foundation

struct ApodImage: Decodable {
    let title: String
    let url: String
    let explanation: String
    let media_type: String // Sometimes APOD returns a video
    
    
    
}
