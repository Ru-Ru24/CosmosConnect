//
//  SwiftUIView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct LightPollution: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Light Pollution").font(.system(size: 35)).fontWeight(.black)
                Spacer()
                Text("What even is light pollution?").font(.system(size: 25))
                
                
                
                Text("Why should you care?").font(.system(size: 25)) //make this more better
                
                    }
        }
    }
}

#Preview {
    LightPollution()
}
