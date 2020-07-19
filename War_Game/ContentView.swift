import SwiftUI

struct ContentView: View {
    @State var nickname: String = ""
    var body: some View {
            NavigationView {
                
                ZStack{//Put the items in each other's background
                    Image("background")
                    .resizable()
                    .padding(.bottom, -80.0)
                    .edgesIgnoringSafeArea(.all)
                        
                    VStack(alignment: .leading) {
                        Spacer()
                            .frame(height: 40.0)
                        Image("logo")
                            .padding([.top, .leading, .bottom], 120.0)
                            .frame(height: 50.0)
                        Spacer()
                            .padding(.top, 80.0)
                            .frame(height: 80.0)
                        Text("Enter a nickname:")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .bold()
                            .padding(.leading, 5.0)
                        TextField("nickname...", text: $nickname)
                            .padding(.horizontal, 5.0) // add the input box
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Spacer()
                            .frame(height: 25.0)
                        NavigationLink(destination: The_Game()) { // "The_Game()" is from The_Game file
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
