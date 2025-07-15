//
//  CityDiagram.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct CityDiagram: View {
    @State private var newZIndex: Int = 0
    @State private var newVIndex: Int = 1
    @State private var newTempIndex: Int = 0
    var body: some View {
        VStack {
            ZStack {
                Image("postBlackout")
                    .scaledToFit().zIndex(Double(newZIndex))
                Image("preBlackout")                .scaledToFit().zIndex(Double(newVIndex))
            }.padding()
            Button("Flip the Lights") {
                swap(&newZIndex, &newVIndex)
                //newTempIndex = newZIndex
                //newZIndex = newVIndex
                //newVIndex = newTempIndex
            }
        }

    }
}

#Preview {
    CityDiagram()
}
