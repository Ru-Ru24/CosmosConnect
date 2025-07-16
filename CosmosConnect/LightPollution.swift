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
    @State private var value = 0
    @State private var lightShieldNot: Int = 4
    @State private var lightShieldTiny: Int = 3
    @State private var lightShieldMost: Int = 2
    @State private var lightShieldGood: Int = 1
    @State private var shieldIndex: Int = 3
<<<<<<< HEAD
    
    
    //let step = 1
    //let range = 0...10
    var body: some View {
        NavigationStack {
            ZStack {
                Image("back")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Spacer()
                        Text("Light Pollution").font(.system(size: 35)).fontWeight(.black).foregroundColor(Color.white).padding([.top, .leading])
                        Text("What even is light pollution?").font(.system(size: 25)).foregroundColor(Color.white).padding()
                        ZStack {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                    Image("noShield")
                                        .scaledToFit().zIndex(Double(lightShieldNot))
                                    Image("tinyShield")                .scaledToFit().zIndex(Double(lightShieldTiny))
                                    Image("mostlyShield")                .scaledToFit().zIndex(Double(lightShieldMost))
                                    Image("goodShield")                .scaledToFit().zIndex(Double(lightShieldGood))
                                }.padding()
                                Button("Increase Shielding") {
                                    //if shieldIndex > 0 { shieldIndex = shieldIndex-1
                                    if shieldIndex == 4 {
                                        lightShieldNot = 4
                                        lightShieldTiny = 1
                                        lightShieldMost = 1
                                        lightShieldGood = 1
                                    }
                                    else if shieldIndex == 3 {
                                        lightShieldTiny = 4
                                        lightShieldNot = 1
                                        lightShieldMost = 1
                                        lightShieldGood = 1
                                    }
                                    else if shieldIndex == 2 {
                                        lightShieldMost = 4
                                        lightShieldNot = 1
                                        lightShieldTiny = 1
                                        lightShieldGood = 1
                                        
                                    }
                                    else {
                                        shieldIndex = 5
                                        lightShieldGood = shieldIndex
                                    }
                                    shieldIndex = shieldIndex-1
                                    //}
                                    /*else {
                                     shieldIndex = 3
                                     lightShieldGood = shieldIndex
                                     //swap(&lightShieldNot, &lightShieldGood)}
                                     
                                     }*/
                                    //Image("fullImagePollution").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 300.0, height: 300.0).scaledToFit()
                                    /*Stepper(
                                     value: $value,
                                     in: range,
                                     step: step
                                     ) {
                                     
                                     
                                     
                                     */
                                    //Text("Current: \(value) in \(range.description) " +
                                    //    "stepping by \(step)")
                                    
                                    
                                    
                                    
                                    //Text("The sky is bright when there is light, and this I know").zIndex(2)
                                    //ADD IN CONTENT
                                }
                            }
                        }
                        Spacer()
                        
                        
                        Text("Why should you care?").font(.system(size: 25)).foregroundColor(Color.white).padding(.leading) //make this more better
                        
                        VStack {
                            ZStack {
                                Image("postBlackout").padding(.leading)
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
                        
=======


    //let step = 1
    //let range = 0...10
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Light Pollution").font(.system(size: 35)).fontWeight(.black)
                Spacer()
                Text("What even is light pollution?").font(.system(size: 25)).padding()
                ZStack {
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                            Image("noShield")
                                .scaledToFit().zIndex(Double(lightShieldNot))
                            Image("tinyShield")                .scaledToFit().zIndex(Double(lightShieldTiny))
                            Image("mostlyShield")                .scaledToFit().zIndex(Double(lightShieldMost))
                            Image("goodShield")                .scaledToFit().zIndex(Double(lightShieldGood))
                        }.padding()
                        Button("Increase Shielding") {
                            //if shieldIndex > 0 { shieldIndex = shieldIndex-1
                                if shieldIndex == 4 {
                                    lightShieldNot = 4
                                    lightShieldTiny = 1
                                    lightShieldMost = 1
                                    lightShieldGood = 1
                                }
                                else if shieldIndex == 3 {
                                    lightShieldTiny = 4
                                    lightShieldNot = 1
                                    lightShieldMost = 1
                                    lightShieldGood = 1
                                }
                                else if shieldIndex == 2 {
                                    lightShieldMost = 4
                                    lightShieldNot = 1
                                    lightShieldTiny = 1
                                    lightShieldGood = 1
                                
                                }
                                else {
                                    shieldIndex = 5
                                    lightShieldGood = shieldIndex
                                }
                                shieldIndex = shieldIndex-1
                            //}
                            /*else {
                                shieldIndex = 3
                                lightShieldGood = shieldIndex
                                //swap(&lightShieldNot, &lightShieldGood)}
                                
                            }*/
                            //Image("fullImagePollution").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 300.0, height: 300.0).scaledToFit()
                            /*Stepper(
                             value: $value,
                             in: range,
                             step: step
                             ) {
                             
                             
                             
                             */
                            //Text("Current: \(value) in \(range.description) " +
                            //    "stepping by \(step)")
                            
                            
                            
                            
                            //Text("The sky is bright when there is light, and this I know").zIndex(2)
                            //ADD IN CONTENT
                        }
                    }
                }
                Spacer()
                Text("Light pollution has multiple aspects:")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .padding()
                HStack {
                    VStack {
                        Text("1. Light pollution is the glow over city skies\n2. Light pollution is light that goes beyond it's intended scope.\n   (e.g. a neighbors houselights also illuminate your driveway)")
                    }
                }
                
                
                Text("Why should you care?").font(.system(size: 25)).padding() //make this more better
                
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
>>>>>>> main
                    }
                    .padding(.top)
                }
                .padding([.top, .leading, .trailing])
            }
            .padding(.top)
        }
    }
}

#Preview {
    LightPollution()
}
