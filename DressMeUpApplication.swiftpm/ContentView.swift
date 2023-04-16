import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
//            LinearGradient(
//                gradient: Gradient(colors: [Color("bg-top"), Color("bg-bot")]),
//                startPoint: .top, endPoint: .bottom
//            ).ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .background(Color(.red))
               
            
        }
        
    }
}
