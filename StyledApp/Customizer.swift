//
//  Customizer.swift
//  StyledApp
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI
struct Customizer: View {
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
        Customizer()
    }
    
