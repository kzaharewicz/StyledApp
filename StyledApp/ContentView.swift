//
//  ContentView.swift
//  StyledApp
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    var tops = [
         [
             UIImage(named: "WhiteTank") : "Sleeveless"
         ],
         [
             UIImage(named: "NavyTank"):"Sleeveless"
         ],
         [
             UIImage(named: "WhiteTubeTop"):"Sleeveless"
         ],
         [
             UIImage(named: "Halter"):"Sleeveless"
         ],
         [
             UIImage(named: "FrankOceanTee"):"Short Sleeved"
         ],
         [
             UIImage(named: "PinkCarTShirt"):"Short Sleeved"
         ],
         [
             UIImage(named: "PinkShortSleeve"):"Short Sleeved"
         ],
         [
             UIImage(named: "YankeesTShirt"):"Short Sleeved"
         ],
         [
             UIImage(named: "ColdCultureHoodie"):"Long Sleeved"
         ],
         [
             UIImage(named: "GrayLongSleeve"):"Long Sleeved"
         ],
         [
             UIImage(named: "PinkHoodie"):"Long Sleeved"
         ],
         [
             UIImage(named: "StarSweater"):"Long Sleeved"
         ]
         ]
         
    func randomTop() -> UIImage? {
             let randomizedTop = tops.randomElement()
             return randomizedTop?.keys.first ?? nil
         }
   
         
       var bottoms =  [
         [
             UIImage(named: "DenimMiniSkirt"):"Mini"
         ],
         [
             UIImage(named: "OneTeaspoons"):"Mini"
         ],
         [
             UIImage(named: "RedMiniSkirt"):"Mini"
         ],
         [
             UIImage(named: "BlueMidiSkirt"):"Midi"
         ],
         [
             UIImage(named: "WhiteMidi"):"Midi"
         ],
         [
             UIImage(named: "BlueMaxi"):"Maxi"
         ],
         [
             UIImage(named: "DeiselJeans"):"Maxi"
         ],
         [
             UIImage(named: "PinkLinenPants"):"Maxi"
         ],
         [
             UIImage(named: "RippedJeans"):"Maxi"
         ],
         [
             UIImage(named: "WhiteLinenPants"):"Maxi"
         ],
         [
             UIImage(named: "YellowPinkMaxi"):"Maxi"
         ]
     ]
    
    func randomBottom() -> UIImage? {
        let randomizedBottom = bottoms.randomElement()
        return randomizedBottom?.keys.first ?? nil
    }
    
     var shoes = [
         [
             UIImage(named: "WhiteHeels"):"Heels"
         ],
         [
             UIImage(named: "BlackHeels"):"Heels"
         ],
         [
             UIImage(named: "FlameBoots"):"Boots"
         ],
         [
             UIImage(named: "NavyFlats"):"Flats"
         ],
         [
             UIImage(named: "RedFlats"):"Flats"
         ],
         [
             UIImage(named: "Sambas"):"Sneakers"
         ],
         [
             UIImage(named: "GoldenGooseSneakers"):"Sneakers"
         ],
     ]
    func randomShoe() -> UIImage? {
        let randomizedShoe = shoes.randomElement()
        return randomizedShoe?.keys.first ?? nil
    }

    @State var imageToDisplayTop : UIImage? = UIImage(named: "WhiteTubeTop")
    @State var imageToDisplayBottom = UIImage(named: "DeiselJeans")
    @State var imageToDisplayShoe = UIImage(named: "WhiteHeels")
    var body: some View {
   
        
        NavigationStack {
            ZStack(){
                Color(red: 0.96, green: 0.92, blue: 0.878)
                    .ignoresSafeArea()
                
                VStack(){
                    
                    VStack(alignment: .center, spacing: 20) {
                        Spacer(minLength: 48)
                            .padding()
                            .frame(width: 400, height: 65)
                            .background(Rectangle()
                                .cornerRadius(30)
                                .ignoresSafeArea()
                                .foregroundColor(Color("Color5")))
                    
                    }
                    VStack {
                        HStack(spacing: 100) {
                            Button(action: {
                                imageToDisplayTop = randomTop()
                            })
                             {
                                Image(systemName: "line.3.crossed.swirl.circle.fill")
                            }
                            if let topImageSeletedTop = imageToDisplayTop {
                                Image(uiImage: topImageSeletedTop)
                                    .resizable()
                                    .frame(width: 200, height: 200)
                            }
                        }
                        
                        //create h stack for bottoms
                        //create h stack for shoes
                        
                    }.padding()
                    
                    Spacer()
                    VStack(){
                        HStack() {
                            NavigationLink(destination: ContentView().navigationBarBackButtonHidden()){
                                Image(systemName: "house")
                                    .font(.system(size: 40))
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.white)
                            }
                            .padding([.top, .leading, .trailing])
                            NavigationLink(destination: Customizer().navigationBarBackButtonHidden()){
                                Image(systemName: "tshirt")
                                    .font(.system(size: 40))
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.white)
                            }
                            .padding([.top, .leading, .trailing])
                            NavigationLink(destination: Map().navigationBarBackButtonHidden()){
                                Image(systemName: "mappin")
                                    .font(.system(size: 40))
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.white)
                            }
                            .padding([.top, .leading, .trailing])
                            NavigationLink(destination: Info().navigationBarBackButtonHidden()){
                                Image(systemName: "books.vertical")
                                    .font(.system(size: 40))
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(Color.white)
                                    
                            }
                            .padding([.top, .leading, .trailing])
                            
                            
                            
                        }

                        
                    }  .padding()
                        .frame(width: 400, height: 55)
                        .background(Rectangle()
                            .cornerRadius(25)
                            .ignoresSafeArea()
                            .foregroundColor(Color("Color5")))
                    
                    
                    
                    
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }
    

