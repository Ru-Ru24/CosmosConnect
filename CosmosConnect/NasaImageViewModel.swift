//
//  NasaImageViewModel.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import Foundation

class NasaImageViewModel: ObservableObject {
    @Published var apodImage: ApodImage?

    func fetchImage() {
        let apiKey = "Nj7DNDewexIIfh0BAGMuC893RotU55vZQDHszdcC" // Replace this with your real key
        let urlString = "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)"

        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Network error: \(error)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let decoded = try JSONDecoder().decode(ApodImage.self, from: data)
                
                // Optional: skip if it's not an image
                guard decoded.media_type == "image" else {
                    print("Received media type: \(decoded.media_type)")
                    return
                }

                DispatchQueue.main.async {
                    self.apodImage = decoded
                }
            } catch {
                print("Decoding error: \(error)")
            }
        }.resume()
    }
}

