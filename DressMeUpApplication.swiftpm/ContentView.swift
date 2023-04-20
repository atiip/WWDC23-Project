import SwiftUI


struct ContentView: View {
    let imageName = "icon-home"
    @State private var isPresented = false
    @State var popUp: String = "first"
    var body: some View {
        NavigationView{
            ZStack{
              
                VStack{
                    
                }.frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity
                    )
                .background(Color("bg-btn")).opacity(0.5)
                VStack{
                    HStack {
                        Button(action: {
                            isPresented = true
                        }) {
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .scaledToFit()
                                .font(.largeTitle)
                                .foregroundColor(Color("bg-color"))
                                .frame(width: 50, height: 50)
                                .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 0))
                        }
                        .disabled(isPresented)
                        Spacer()
                        Button(action: {
                        }) {
                            Image(systemName:  "speaker.wave.2.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .font(.largeTitle)
                                                .foregroundColor(Color("bg-color"))
                                                .frame(width: 50, height: 50)
                                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 16))
                            
                        }.disabled(isPresented)
                                    
                    }.padding()
            
                    VStack {
                        Image(imageName)
                            .resizable()
                            .frame(width: 500, height: 500)
                            .clipped()
                            .scaledToFill()
                        Text("Dress Me Up !!")
                            .font(.system(size: 64))
                            .bold()
                            .foregroundColor(Color(.white))
                            .padding(EdgeInsets(top: 120, leading: 0, bottom: 0, trailing: 0))
                        
                        Button(action: {
                            
                        }, label: {
                            NavigationLink(destination: finalView()){
                               
                                Text("Start")
                                    .frame(width: 500)
                                    .font(.title)
                                    .foregroundColor(Color(.white))
                                    .padding()
                                    .background(Color("bg-btn"))
                                    .cornerRadius(16)
                                    .shadow(color: Color.black.opacity(0.5), radius: 4, x: 4, y: 4)
                            }
                        }).padding(EdgeInsets(top: 0, leading: 12, bottom: 12, trailing: 8))
                            .disabled(isPresented)
                        
                        Button(action: {
                            isPresented = true
                            popUp = "second"
                        }, label: {
                            Text("How to use")
                                .frame(width: 500)
                                .font(.title)
                                .foregroundColor(Color(.white))
                                .padding()
                                .background(Color("bg-secondary-btn"))
                                .cornerRadius(16)
                                .shadow(color: Color.black.opacity(0.5), radius: 4, x: 4, y: 4)
                        }).padding(EdgeInsets(top: 0, leading: 12, bottom: 12, trailing: 8))
                            .disabled(isPresented)
                    }
                    Spacer()
                
                    
                }
                
                .blur(radius: isPresented ? 3 : 0)
                if isPresented {
                    PopUpView(isPresented: $isPresented,checkPopUp: $popUp)
                }
                
            }
        }.navigationViewStyle(.stack)
    }
}



struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


