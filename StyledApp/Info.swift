//
//  Info.swift
//  StyledApp
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI
struct Info: View {
  var body: some View {
    NavigationStack {
      ZStack(){
        Color(red: 0.96, green: 0.92, blue: 0.878)
          .ignoresSafeArea()
        VStack(){ //first vstack i wrote abt down there
          VStack(alignment: .center, spacing: 20) {
            Spacer(minLength: 48)
              .padding()
              .frame(width: 400, height: 65)
              .background(Rectangle()
                .cornerRadius(30)
                .ignoresSafeArea()
                .foregroundColor(Color("Color5")))
          }
          ScrollView {
            VStack (spacing: 10){
              Text("Stay Informed")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.color5)
                Text("It's important that we all know about the detriment that fast fashion has to our planet.")
                    .multilineTextAlignment(.center)
              Image("collage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
              VStack (spacing: 10){
                Text("Where It All Began")
                  .font(.title2)
                  .fontWeight(.bold)
                  .multilineTextAlignment(.center)
                  .foregroundStyle(.color7)

                 // .padding(.bottom)
                Text("The history of fast fashion began in the 1970s with the establishment of factories across Asia and Latin America. This production enabled cheap labor and mass production of clothes, resulting in their prices being very low.")
                  .multilineTextAlignment(.leading)
                  .padding(.leading, 1.0)
                Text("Fashion and CO2 Emissions")
                  .font(.title2)
                  .fontWeight(.medium)
                  .foregroundStyle(.color7)
                Text("The fashion industry currently accounts for 10% of global CO2 emissions each year, and by 2050, this figure is expected to rise to 25%. These percentages are attributed to the materials used in textiles, such as petrochemicals, which release high amounts of CO2.")
                  .multilineTextAlignment(.leading)
                  .padding(.leading, 8.0)
                Text("Fashion and Water Pollution")
                  .font(.title2)
                  .fontWeight(.medium)
                  .foregroundStyle(.color7)
                  .padding(-2)
                Text("Some types of clothing include microplastics, which can end up in our oceans when rain flushes these materials away. Such microplastics can then be ingested by marine organisms, posing a risk to these animals.")
//for tips box
                VStack (spacing: 15) {
                  Text("Tips")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.color3)
                  Text("- Practice slow fashion, which involves purchasing quality clothes made sustainably and ethically. This practice also ensures that workers are paid fair wages and work in safe environments.")
                        .foregroundStyle(.color7)
                  Text("- Consider the timelessness of a piece of clothing and whether it will still be stylish in a month.")
                        .foregroundStyle(.color7)
                  Text("- Shop secondhand at thrift stores or online platforms such as Depop, Poshmark, ThredUp, etc.")
                        .foregroundStyle(.color7)
                    .padding(.trailing)
                }
                .padding()
                .background(Rectangle()
                  .foregroundColor(.color5))
                .cornerRadius(15)
                .shadow(radius:8)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.color7, lineWidth: 2))
                .padding()
              }
            }
            .padding()
          }
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
          } //end of v stack at top
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
    Info()
  }
















