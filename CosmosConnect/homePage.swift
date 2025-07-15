//
//  homePage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollView {
                    HStack {
                        Image("galaxy-star")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            
                        Text("Home")
                            .padding([.top, .leading, .trailing])
                        Text("Daily Pic")
                            .padding([.top, .leading, .trailing])
                        Text("Light Pollution")
                            .padding([.top, .leading])
                        
                    }
                    
                VStack(alignment: .leading, spacing: 8) {
                        Text("")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 150)
                            .overlay(
                                Text("Content Placeholder")
                                    .foregroundColor(.gray)
                            )
                            .cornerRadius(10)
                }
                .padding(.horizontal)

                    // Section 2
                VStack(alignment: .leading, spacing: 8) {
                        Text("Section 2")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 150)
                            .overlay(
                                Text("Content Placeholder")
                                    .foregroundColor(.gray)
                            )
                            .cornerRadius(10)
                }
                .padding(.horizontal)

                   
                VStack(alignment: .leading, spacing: 8) {
                        Text("Section 3")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 150)
                            .overlay(
                                Text("Content Placeholder")
                                    .foregroundColor(.gray)
                            )
                            .cornerRadius(10)
                }
                .padding(.horizontal)


                }
                Image("stars")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .padding(.all)
                Text("This is a placeholder")
                    .font(.caption)
                Spacer()
                
                ZStack {
                    
                    
                }
            }
        }
    }
}

#Preview {
    homePage()
}
