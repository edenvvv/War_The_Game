import SwiftUI

struct ContentView: View {
    @State var nickname: String = ""
    var body: some View {
            NavigationView {
                NavigationLink(destination: The_Game()) { // "The_Game()" is from The_Game file
                ZStack{//Put the items in each other's background
                    Image("background")
                    .resizable()
                    .padding(.bottom, -80.0)
                    .edgesIgnoringSafeArea(.all)
                        
                    VStack(alignment: .leading) {
                        Image("logo")
                            .padding([.leading, .bottom], 105.0)
                            .frame(height: 50.0)
                        Spacer()
                            .padding(.top, 80.0)
                            .frame(height: 80.0)
                        Text("Enter a nickname:")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .bold()
                        TextField("nickname...", text: $nickname) // add the input box
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Spacer()
                            .frame(height: 35.0)
                        Image("dealbutton").renderingMode(.original).padding([.leading, .bottom], 125.0).frame(height: 200.0)// Displays the image in its original form
                        Spacer()
                        .frame(height: 130.0)
                    }.padding()
                    
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
