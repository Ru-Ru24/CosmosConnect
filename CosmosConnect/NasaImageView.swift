//
//  NasaImageView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct NasaImageView: View {
    @StateObject private var viewModel = NasaImageViewModel()

    var body: some View {
        ZStack {
            VStack {
                if let apod = viewModel.apodImage,
                   let imageURL = URL(string: apod.url) {
                    
                    Text("NASA Astronomy Picture Of The Day")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top)

                    Text(apod.title)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 5)

                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(12)
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(.bottom)

                    ScrollView {
                        Text(apod.explanation)
                            .font(.body)
                            .padding()
                    }

                    HStack {
                        Spacer()
                        Button(action: {
                            viewModel.addToFavorites()
                        }) {
                            Image(systemName: viewModel.isFavorite(apod) ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                                .font(.title)
                        }
                    }
                    .padding(.trailing)
                } else {
                    ProgressView("Fetching NASA Image...")
                        .onAppear {
                            viewModel.fetchImage()
                        }
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    NasaImageView()
}
