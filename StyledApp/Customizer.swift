//
//  Customizer.swift
//  StyledApp
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI
//here
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
var bottoms = [
 [
   UIImage(named: "OneTeaspoons"):"Mini"
 ],
 [
     UIImage(named: "BlackDenimSkirt"):"Mini"
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
struct Customizer: View {
//struct ContentView: View {
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
          Text("My Closet")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.color7)
          VStack {
            ScrollView(.horizontal) {
              LazyHStack(spacing: 150) {
                ForEach(tops, id: \.self) { item in
                  if let key = item.keys.first, let image = key {
                    Image(uiImage: image)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 200, height: 200) // Adjust the frame as needed .padding()
                  }
                }
              }
              .padding(.horizontal, 55)
              .scrollTargetLayout()
            }
            .frame(width: 300, height: 200)
            .scrollTargetBehavior(.viewAligned)
            ScrollView(.horizontal) {
              LazyHStack(spacing: 150) {
                ForEach(bottoms, id: \.self) { item in
                  if let key = item.keys.first, let image = key {
                    Image(uiImage: image)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 200, height: 200) // Adjust the frame as needed .padding()
                  }
                }
              }
              .padding(.horizontal, 55)
              .scrollTargetLayout()
            }
            .frame(width: 300, height: 200)
            .scrollTargetBehavior(.viewAligned)
            ScrollView(.horizontal) {
              LazyHStack(spacing: 150) {
                ForEach(shoes, id: \.self) { item in
                  if let key = item.keys.first, let image = key {
                    Image(uiImage: image)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 150, height: 200) // Adjust the frame as needed .padding()
                      .padding()
                  }
                }
                .padding(.bottom, 40.0)
              }
//              .frame(width: 300, height: 200)
              .padding(.horizontal, 60)
              .scrollTargetLayout()
            }
//            padding()
//            .frame(width: 300, height: 300)
            .scrollTargetBehavior(.viewAligned)
          } //end of vstack
          .frame(width: 300, height: 550)
//          .padding(20)
          .background(Rectangle()
            .foregroundColor(.color4).opacity(0.9))
          .cornerRadius(15)
         .shadow(radius:15)
          .overlay(
            RoundedRectangle(cornerRadius: 15)
              .stroke(.color7, lineWidth: 2.5))
//          .padding(20)
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
              // Spacer(minLength: -12)
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
          } .padding()
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
    Customizer()
  }
