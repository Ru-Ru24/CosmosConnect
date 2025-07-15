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
                    
                    Text(apod.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()

                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(12)
                    } placeholder: {
                        ProgressView()
                    }
                    //Spacer()

                    /*
                    ScrollView {
                        //click here to view more
                        Text(apod.explanation)
                            .padding()
                    }
                     */
                } else {
                    ProgressView("Fetching NASA Image...")
                        .onAppear {
                            viewModel.fetchImage()
                        }
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    NasaImageView()
}
