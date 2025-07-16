//
//  ApodImage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import Foundation
//<<<<<<< HEAD

import UIKit

struct ApodImage: Decodable, Identifiable, Equatable{
    var id:String {url}
    
    let title: String
    let url: String
    let explanation: String
    let media_type: String // Sometimes APOD returns a video
    
}


struct APODResponse: Codable {
    let title: String
    let url: String
    let explanation: String
    let media_type: String
}
func fetchAPOD() async throws -> APODResponse {
    let apiKey = "DEMO_KEY" // Replace with your real NASA API key
    let urlString = "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)"
    guard let url = URL(string: urlString) else {
        throw URLError(.badURL)
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    let apod = try JSONDecoder().decode(APODResponse.self, from: data)
    
    return apod
}
func downloadImage(from urlString: String) async throws -> UIImage? {
    guard let url = URL(string: urlString) else {
        return nil
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    return UIImage(data: data)
}

class ImageCache {
    static let shared = NSCache<NSString, UIImage>()
}
func cachedOrDownloadImage(urlString: String) async throws -> UIImage? {
    if let cached = ImageCache.shared.object(forKey: urlString as NSString) {
        return cached
    }

    let image = try await downloadImage(from: urlString)
    if let image = image {
        ImageCache.shared.setObject(image, forKey: urlString as NSString)
    }
    return image
}
