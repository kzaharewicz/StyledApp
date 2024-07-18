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
             UIImage(named: "NavyLaceTank"):"Sleeveless"
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
             UIImage(named: "BlackDenimSkirt"):"Mini"
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
             UIImage(named: "8BallShorts"):"Midi"
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
             UIImage(named: "BlackSneakers"):"Sneakers"
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
                      //  Image("Styled")
                            //.resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(width: 400, height: 65)
                            .background(Rectangle()
                                .cornerRadius(30)
                                .ignoresSafeArea()
                                .foregroundColor(Color("Color5")))
                        
//                            .padding(.bottom, 650.0)
//                            .frame(width: 16.0, height: 9.0)
                    
                    }
                // Image("Styled")
                        .aspectRatio(contentMode: .fit)
                    VStack {
                        HStack(spacing: 60) {
                            Button(action: {
                                imageToDisplayTop = randomTop()
                            })
                             {
                                 Image(systemName: "line.3.crossed.swirl.circle.fill")
                                     .foregroundColor(Color("Color6"))
                                     .font(.system(size: 40))
                                     
                             }
                             
                            if let topImageSeletedTop = imageToDisplayTop {
                                Image(uiImage: topImageSeletedTop)
                                    .resizable()
                                    .frame(width: 190, height: 200)
                            }
                        }
                        
                        HStack(spacing: 60) {
                            Button(action: {
                                imageToDisplayBottom = randomBottom()
                            })
                             {
                                 Image(systemName: "line.3.crossed.swirl.circle.fill")
                                     .foregroundColor(Color("Color6"))
                                     .font(.system(size: 40))
                            }
                            
                            if let topImageSeletedBottom = imageToDisplayBottom {
                                Image(uiImage: topImageSeletedBottom)
                                    .resizable()
                                    .frame(width: 200, height: 210)
                            }
                        } 
                        HStack(spacing: 60) {
                            Button(action: {
                                imageToDisplayShoe = randomShoe()
                            })
                             {
                                 Image(systemName: "line.3.crossed.swirl.circle.fill")
                                     .foregroundColor(Color("Color6"))
                                     .padding(.leading)
                                     .font(.system(size: 40))
                            }
                             .padding(.trailing, 45)
                            if let topImageSeletedShoe = imageToDisplayShoe {
                                Image(uiImage: topImageSeletedShoe)
                                    .resizable()
                                    .padding(.trailing, 50)
                                    .frame(width: 170, height: 180)
                            }
                        }
                        
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
                            NavigationLink(destination: MapView().navigationBarBackButtonHidden()){
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
                Image("Styled")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.bottom, 720.0)
                    .frame(width: 190.0, height: 190.0)
                    
                    
       
               
            }
        }
    }
}
    #Preview {
        ContentView()
    }
    

