//
//  CityDiagram.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct CityDiagram: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).size(width: 350, height: 200, anchor: .top)
            HStack {
                RoundedRectangle(cornerRadius: 2).size(width: 30, height: 150, anchor: .topLeading).fill(.bloodred).padding([.top, .leading], 20.0)
            }
        }.padding()
    }
}

#Preview {
    CityDiagram()
}
