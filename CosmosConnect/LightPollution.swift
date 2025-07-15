//
//  SwiftUIView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct LightPollution: View {
    @State private var newZIndex: Int = 0
    @State private var newVIndex: Int = 1
    @State private var newTempIndex: Int = 0
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Light Pollution").font(.system(size: 35)).fontWeight(.black)
                Spacer()
                Text("What even is light pollution?").font(.system(size: 25))
                ZStack {
                    Text("The sky is bright when there is light, and this I know").zIndex(2)
                    //ADD IN CONTENT
                }
                Spacer()
                
                
                Text("Why should you care?").font(.system(size: 25)) //make this more better
                
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
    }
}

#Preview {
    LightPollution()
}
