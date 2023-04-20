//
//  finalView.swift
//  DressMeUpApplication
//
//  Created by Muhammad Athif on 19/04/23.
//

import SwiftUI

struct ClothesView: View {
    @State private var imageWidth: CGFloat = 0
    @State private var imageHeight: CGFloat = 0
    @State var x1: CGFloat = 840
    @State var y1: CGFloat = 260
    @State var x2: CGFloat = 840
    @State var y2: CGFloat = 150
    @State var x3: CGFloat = 390
    @State var y3: CGFloat = 400
    @State var collision1: Bool = false
    @State var collision2: Bool = false

    
    
    @GestureState var locationStateBajuSatu = CGPoint(x: 840, y: 120)
    @GestureState var locationStateBajuDua = CGPoint(x: 840, y: 120)
    
    @Binding var isSelectedClothes: String
    @Binding var isHat: String
    
    
    
    
    let items = ["topi-putih", "topi-hitam", "baju-putih", "baju-hitam", "baju-hitam-panjang", "celana-putih", "celana-biru", "celana-hitam-panjang"]
    
    var body: some View {
        ZStack {
            
          // background page
          VStack{
              
          }
          .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity
              )
          .background(Color("bg-btn")).opacity(0.5)
            
            // Title
            VStack{
                VStack{
                    Text("Let's get dress !!")
                        .font(.system(size: 64))
                        .bold()
                        .foregroundColor(Color(.white))
                    Text("Step 1: Pick a shirt !!")
                        .font(.system(size: 36))
                        .bold()
                        .foregroundColor(Color(.white))
                    
                }
                
            Spacer()
                Button(action: {
                    
                    }, label: {
                        NavigationLink(destination: finalView()){
                           
                            Text("Next")
                                .frame(width: 500)
                                .font(.title)
                                .foregroundColor(Color(.white))
                                .padding()
                                .background(Color("bg-secondary-btn"))
                                .cornerRadius(16)
                                .shadow(color: Color.black.opacity(0.5), radius: 4, x: 4, y: 4)
                        }
                    }).padding(EdgeInsets(top: 0, leading: 12, bottom: 36, trailing: 8))
           
                }
        
            // Icon-human
            VStack (alignment: .leading) {

                HStack {
                    
                    GeometryReader { value in
                        
//                            Image(isSelectedClothes)
//
//                                .resizable()
//                                .scaledToFit()
//                                .opacity(collision1 ? 0 : 1)
//                                .opacity(collision2 ? 0 : 1)
//                                .padding(.top, 200)
//                                .position(x: self.x3, y: self.y3)
//                                .onAppear {
//                                    imageWidth = value.size.width
//                                    imageHeight = value.size.height
//                                }
                        
                            Image(isSelectedClothes)

                           .resizable()
                           .scaledToFit()
                           .opacity(collision1 ? 0 : 1)
                           .opacity(collision2 ? 0 : 1)
                           .padding(.top, 200)
                           .position(x: self.x3, y: self.y3)
                           .onAppear {
                               imageWidth = value.size.width
                               imageHeight = value.size.height
                           }
                    
                        
                        
                        if (isHat == "putih"){
                            if(collision1 == true && collision2 == false){
                                Image("putih-hitam-panjang-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision1 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "putih-hitam-panjang-biru"
                                    }
                            }
                            else if(collision1 == false && collision2 == true){
                                Image("putih-hitam-panjang-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision2 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "putih-hitam-biru"
                                    }
                            }
                            
                            
                        
                        }
                        
                        else if (isHat == "hitam"){
                            if(collision1 == true && collision2 == false){
                                Image("hitam-hitam-panjang-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision1 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "hitam-hitam-panjang-biru"
                                    }
                            }
                            else if(collision1 == false && collision2 == true){
                                Image("hitam-hitam-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision2 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "hitam-hitam-biru"
                                    }
                            }
                            
                        }
                        else{
                            if(collision1 == true && collision2 == false){
                                Image("kosong-hitam-panjang-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision1 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "kosong-hitam-panjang-biru"
                                    }
                            }
                            else if(collision1 == false && collision2 == true){
                                Image("kosong-hitam-biru")
                                
                                    .resizable()
                                    .scaledToFit()
                                    .opacity(collision2 ? 1 : 0)
                                    .padding(.top, 200)
                                    .position(x: self.x3, y: self.y3)
                                    .onAppear {
                                        imageWidth = value.size.width
                                        imageHeight = value.size.height
                                        isSelectedClothes = "kosong-hitam-biru"
                                    }
                            }
                        
                            
                        }
                           
                            
                        
                        
                    }
                    Spacer()
                }
            }.padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
                
            // List-item
            HStack(alignment: .top) {
                VStack {
                    Image("baju-hitam-panjang")
                        .resizable()
                        .scaledToFit()
                        .border(.white, width: 2)
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.all)
                        .frame(maxWidth: 200)
                        .position(locationStateBajuSatu)
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    location in
                                    if location.location.x - self.x3 <= 100 && location.location.y - self.y3 <= 100 {
                                        self.collision1 = true
                                        self.collision2 = false
                                    }
                                }
                                .updating($locationStateBajuSatu) {
                                    currentState, pastLocation, transaction in pastLocation = currentState.location
                                }
                        )
                    
                    
                    Image("baju-hitam")
                        .resizable()
                        .scaledToFit()
                        .frame(alignment: .trailing)
                        .border(.white, width: 2)
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.all)
                        .frame(maxWidth: 200)
                        .position(locationStateBajuDua)
                        .gesture(
                            DragGesture()
                                .onChanged{
                                    location in
                                    if location.location.x - self.x3 <= 50 && location.location.y - self.y3 <= 50 {
                                        self.collision2 = true
                                        self.collision1 = false
                                    }
                                }
                                .updating($locationStateBajuDua) {
                                    currentState, pastLocation, transaction in pastLocation = currentState.location
                                }
                        )
                }
                .padding()
                .frame(height: 600 )
            }
        
        

                        
                    }
    }
    
}


