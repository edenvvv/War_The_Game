import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{//Put the items in each other's background
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{//Put the items on top of each other
                Image("logo")
                
                HStack{//Put the items next to each other
                    Image("back")
                    Image("back")
                }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
