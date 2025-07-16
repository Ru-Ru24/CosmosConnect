//
//  newAstroImage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct newAstroImage: View {
    @State private var apod: APODResponse?
    @State private var image: UIImage?

    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                ProgressView("Loading Image...")
            }

            if let title = apod?.title {
                Text(title).font(.headline)
            }
        }
        .task {
            do {
                let apodData = try await fetchAPOD()
                self.apod = apodData
                if apodData.media_type == "image" {
                    self.image = try await cachedOrDownloadImage(urlString: apodData.url)
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
#Preview {
    newAstroImage()
}
