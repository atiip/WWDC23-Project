//
//  PopUpVIew.swift
//  DressMeUpApplication
//
//  Created by Muhammad Athif on 18/04/23.
//

import SwiftUI

struct PopUpView: View {
    @Binding var isPresented: Bool
    let imageName = "icon-about-us"
    @Binding var checkPopUp: String
    var body: some View {
        ZStack{
            VStack{
                
                if(checkPopUp == "first"){
                    Image("icon-about-us")
                        .resizable()
                        .frame(width: 280, height: 280)
                        .clipped()
                        .scaledToFill()
                    Text("About Me 👀")
                        .font(.system(size: 36))
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                    Text("Welcome to DressMeUp, an AR app that allows you to try on different styles of clothing and accessories in an easy and fun way 👻")
                        .font(.system(size: 20))
                        .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                        .multilineTextAlignment(.center)
                }else{
                    Image("icon-how-to-use")
                        .resizable()
                        .frame(width: 280, height: 280)
                        .clipped()
                        .scaledToFill()
                       
                    Text("How to use 👀")
                        .font(.system(size: 36))
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                    ScrollView(.vertical, showsIndicators: true){
                        VStack{
                            HStack{
                                Image("blue-1")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipped()
                                    .scaledToFill()
                                Text("Press the start button on the home page ")
                                    .font(.system(size: 20))
                                    .frame(width: 280, height: 80)
                                    .multilineTextAlignment(.center)
                            }.padding(EdgeInsets(top: 0, leading: 52, bottom: 0, trailing: 50))

                            HStack{
                                Image("blue-2")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipped()
                                    .scaledToFill()
                                Text("This game consists of 3 stages, the first is you can choose a hat according to your taste, then the shirt, and the last is pants")
                                    .font(.system(size: 20))
                                    .frame(width: 280, height: 80)
                                    .multilineTextAlignment(.center)
                            }
                            HStack{
                                Image("blue-3")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipped()
                                    .scaledToFill()
                                Text("Have fun and enjoy")
                                    .font(.system(size: 20))
                                    .frame(width: 280, height: 80)
                                    .multilineTextAlignment(.center)
                            }
                            
                        }
                    }
                    
                   
                   
                }
                
                
                Button(action: {
                    isPresented = false
                    checkPopUp = "first"
                }, label: {
                       
                        Text("Close")
                            .frame(width: 100)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("bg-secondary-btn"))
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.5), radius: 4, x: 4, y: 4)
                }).padding(EdgeInsets(top: 20, leading: 12, bottom: 20, trailing: 8))
            }.padding()
        }
        .frame(width: 450 ,height: 700)
        .background(Color("bg-pop-up")).cornerRadius(15)
            .padding()
            .shadow(color: Color.black.opacity(0.5), radius: 4, x: 0, y: 4)
            
        
    }
}

