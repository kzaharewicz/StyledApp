//
//  MapView.swift
//  StyledApp
//
//  Created by Scholar on 7/18/24.
//

import SwiftUI
import MapKit
//Donation Drop off properties
struct DonationDropOff : Identifiable {
  let id = UUID()
  let name : String
  let latitude : Double
  let longitude : Double
  let address : String
  let rating : String
  let phone : String
}
let donationPlaces = [
  DonationDropOff(name: "Dragon Fly Thrift", latitude: 25.765695106741553,longitude: -80.2454748003419, address: "3141 SW 8th St Ste A Miami, FL 33135 West Flagler", rating: "4.9 ⭐️⭐️⭐️⭐️⭐️", phone : "+17865344178"),
  DonationDropOff(name: "Camillus House" , latitude : 25.790828899488535 , longitude : -80.20682088075975 , address : "1603 NW 7th Ave Miami, FL 33136 Civic Center", rating: "4.0 ⭐️⭐️⭐️⭐️", phone : "+13053741065"),
  DonationDropOff(name : "Lotus House", latitude: 25.790635311734018 , longitude: -80.1991820097984 , address: "2040 NW 7th Ave Miami, FL 33127 Allapattah", rating: "4.4 ⭐️⭐️⭐️⭐️", phone : "+13055764112 "),
  DonationDropOff(name: "The Salvation Army", latitude: 25.79936280766659 , longitude: -80.19649415404267, address: "90 NW 23rd St, Miami, FL 33127", rating : "3.9 ⭐️⭐️⭐️⭐️", phone :" +13055734200"),
  DonationDropOff(name: "Chapman Partnership", latitude: 25.789891421207653, longitude: -80.19512824637133, address: "1550 North Miami Ave Miami, FL 33136 Omni, Overtown", rating: "3.3 ⭐️⭐️⭐️", phone : "+13053293000"),
  DonationDropOff(name: "Goodwill", latitude: 25.673177701561816, longitude: -80.32036119055387, address: "10501 S Dixie Hwy Miami, FL 33156", rating: "4.0 ⭐️⭐️⭐️⭐️", phone :"+13057695722"),
  DonationDropOff(name: "Red White & Blue", latitude: 25.839228343835234 , longitude: -80.25900213096308 , address: " 901 E 10th Ave Ste 12 Hialeah, FL 33010", rating : "4.0 ⭐️⭐️⭐️⭐️", phone : "+13058875351"),
  DonationDropOff(name: "The Caring Place", latitude: 25.86804478404003, longitude: -80.2092742579843, address: "9801 NW 7th Ave, Miami, FL 33150", rating: "3.9 ⭐️⭐️⭐️⭐️", phone :"+13055722063"),
  DonationDropOff(name: "Out of the Closet", latitude: 25.80593510882398, longitude: -80.18798824767511, address: "2400 Biscayne Blvd, Miami, FL 33137", rating:"4.0 ⭐️⭐️⭐️⭐️" , phone : "+13057643773"),
  DonationDropOff(name: "Ronald McDonald House Charities", latitude: 25.797575155107488, longitude: -80.21209853485999, address: "1145 NW 14th Terrace, Miami, FL 33136", rating : "4.7 ⭐️⭐️⭐️⭐️⭐️", phone :"+13053245683"),
  DonationDropOff(name: "Dizzle Box Foundation", latitude: 25.99265481155697, longitude: -80.20608117943307, address: "5929 SW 21st St West Park, FL 33023", rating : "5.0 ⭐️⭐️⭐️⭐️⭐️", phone :"+13055285475"),
  DonationDropOff(name: "Goodwill", latitude: 26.005311420791248 , longitude: -80.31636300899869, address: "12594 Pines Blvd Pembroke Pines, FL 33027", rating : "4.0 ⭐️⭐️⭐️⭐️", phone :"+19545418224"),
  DonationDropOff(name: "Goodwill", latitude:26.18768656518374, longitude: -80.17190061513372 , address: "2104 W Commercial Blvd, Fort Lauderdale, FL 33309" , rating: "3.5 ⭐️⭐️⭐️⭐️", phone : " +19544861600"),
  DonationDropOff(name: "The Caring Place",
  latitude: 26.230801,
  longitude: -80.126742,
          address: "1700 Blount Rd, Pompano Beach, FL 33069", rating: "3.9 ⭐️⭐️⭐️⭐️", phone : "+19549267417"),
  DonationDropOff(name: "Women in Distress",
  latitude: 26.160592,
  longitude: -80.222924,
          address: "1372 N State Road 7, Lauderhill, FL 33313", rating: "2.5 ⭐️⭐️⭐️", phone : "+19547609800 "),
  DonationDropOff(name: "Goodwill ",
  latitude: 26.066036,
  longitude: -80.243833,
          address: "9190 State Road 84, Davie, FL 33324", rating: "3.9 ⭐️⭐️⭐️⭐️", phone : "+19544722367"),
  DonationDropOff(name: "Salvation Army ",
  latitude: 26.249006,
  longitude: -80.109583,
          address: "1791 N Federal Hwy, Pompano Beach, FL 33062", rating:"4.1 ⭐️⭐️⭐️⭐️", phone : "+19547823925 "),
  DonationDropOff(name: "Hope Outreach Center ",
  latitude: 26.055273,
  longitude: -80.263693,
          address: "4700 SW 64th Ave, Davie, FL 33314", rating: "4.5 ⭐️⭐️⭐️⭐️", phone :" +19543210909"),
  DonationDropOff(name: "Kids in Distress",
  latitude: 26.158090,
  longitude: -80.137491,
          address: "4700 SW 64th Ave, Davie, FL 33314", rating: "3.8 ⭐️⭐️⭐️⭐️", phone :"+19543907654"),
  DonationDropOff(name: "Catholic Charities",
  latitude: 25.867282,
  longitude: -80.290540, address: "510 NW 41st St, Hialeah, FL 33166" , rating: "4.6 ⭐️⭐️⭐️⭐️⭐️" , phone :"+13057542444")
  ]
struct MapView: View {
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 25.941674481470557, longitude: -80.2455801341254), //South Florida
    span: MKCoordinateSpan(latitudeDelta: 0.56, longitudeDelta: 0.56)
  )
  @State private var selectedPlace : DonationDropOff?
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
          VStack() {
            Text("Find nearby donation centers through our app. **Donate Today!**")
              .font(.title2)
              .fontWeight(.light)
              .foregroundColor(Color(red: 0.131, green: 0.097, blue: 0.08))
              .multilineTextAlignment(.center)
           // Text("Donate Today!")
              .font(.title2)
              .fontWeight(.semibold)
              .foregroundColor(Color(red: 0.131, green: 0.097, blue: 0.08))
              .multilineTextAlignment(.center)
                // Map view with annotations for each donation place
                Map(coordinateRegion: $region, annotationItems: donationPlaces) { place in
                  MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                    // Button to select the place when the pin is tapped
                    Button(action: {
                      selectedPlace = place // Update selected place when pin is tapped
                    }) {
                      //display vstack
                      VStack {
                        Image(systemName:"tshirt.fill") //Pin icon
//                          .resizable()
                          .foregroundColor(Color(red: 0.354, green: 0.271, blue: 0.216))
//                          .frame(width:30 ,height:30)
//                          .foregroundColor(.red) //Pin color
                          .frame(width: 0.5, height: 0.5)
                        Text(place.name) //The name of the place
                          .font(.caption)
                          .fontWeight(.bold)
                          .foregroundColor(Color.black)
                          .padding(5)
                          .background(Color.white)
                          .cornerRadius(10)
                          .shadow(radius: 3)
                      }
                    }
                  }
                }
                //      .edgesIgnoringSafeArea(.all)
              }//add here
          .frame(width: 340, height: 530)
          .cornerRadius(5)
          .shadow(radius: 5)
          if let place = selectedPlace {
            VStack(alignment: .center)
            {
              Text(place.name)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.131, green: 0.097, blue: 0.08))
              Text(place.address)
                .font (.callout)
              Text(place.rating)
                .font(.footnote)
              Text(place.phone)
                .font(.footnote)
                .multilineTextAlignment(.center)
            }
            .frame(width: 310, height: 50)
            .padding()
//            .padding(.leading)
            .background(Rectangle()
              .foregroundColor(Color(hue: 0.159, saturation: 0.032, brightness: 1.0)).shadow(color:.white , radius: 10))
            .cornerRadius(10)
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
    MapView()
  }
