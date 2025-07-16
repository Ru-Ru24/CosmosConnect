//
//  ContentView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = NasaImageViewModel()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Cosmos Connect")
                .font(.system(size:40))
                .fontWeight(.bold)
            NasaImageView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
