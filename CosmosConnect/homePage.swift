//
//  homePage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("back")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 10) {
                        Spacer()
                            .padding(.top)
                        HStack {
                            Image("galaxy-star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 35)
                                .padding([.top, .leading, .trailing])

                            Text("Cosmo Connect")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(.top)
                            Spacer()
                        }
                        .padding(.top)
                        Text("Welcome to Cosmo Connect (insert little desc)")
                            .font(.caption)
                        
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical)
                        
                        sectionView(title: "Section 1")
                        NavigationLink(destination: LightPollution()) {
                            Text("What is light pollution?")
                        }
                        //sectionView2(title: "Section 2")
                        //sectionView(title: "Section 3")

                        Image("stars")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 150)
                            .clipped()
                            .padding()

                        Text("This is a placeholder")
                            .font(.caption)
                            .foregroundColor(.white)

                        Spacer()
                    }
                    .padding()
                }
                .ignoresSafeArea()
            }
        }
    }
        }

func sectionView(title: String) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        NasaImageView()
        /*
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)

        Rectangle()
            .fill(Color.gray.opacity(0.2))
            .frame(height: 150)
            .cornerRadius(10)
            .overlay(
                Text("Content Placeholder")
                    .foregroundColor(.white)
            )
         */
    }
    .padding(.horizontal)
}
/*func sectionView2(title: String) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        LightPollution()
        /*
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)

        Rectangle()
            .fill(Color.gray.opacity(0.2))
            .frame(height: 150)
            .cornerRadius(10)
            .overlay(
                Text("Content Placeholder")
                    .foregroundColor(.white)
            )
         */
    }
    .padding(.horizontal)
}*/
#Preview {
    homePage()
}
