import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                NavigationLink(destination: The_Game()) { // "The_Game()" is from The_Game file
                ZStack{//Put the items in each other's background
                    Image("background")
                    .resizable()
                    .padding(.bottom, -80.0)
                    .edgesIgnoringSafeArea(.all)
                    Image("dealbutton").renderingMode(.original).padding([.leading, .bottom], -25.0)// Displays the image in its original form
                }
           }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
