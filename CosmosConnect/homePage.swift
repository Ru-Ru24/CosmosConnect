//
//  homePage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct homePage: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "galaxy-star")
                Text("Home")
                    .padding([.top, .leading, .trailing])
                Text("Daily Pic")
                    .padding([.top, .leading, .trailing])
                Text("Light Pollution")
                    .padding([.top, .leading])
                Spacer()
                
            }
            Image("stars")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            Text("This is a placeholder")
                .font(.caption)
            Spacer()
            
            ZStack {
                
                
            }
        }
    }
}

#Preview {
    homePage()
}
