import SwiftUI

struct ContentView: View {
    @State private var player_card = 4
    @State private var opponent_card = 2
    
    @State private var player_score = 0
    @State private var opponent_score = 0
    
    var body: some View {
        
        ZStack{//Put the items in each other's background
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{//Put the items on top of each other
                Spacer()
                Image("logo")
                
                Spacer() // Adds space between the top object and the bottom object
                
                HStack{//Put the items next to each other
                    Image("card" + String(player_card))
                    Image("card" + String(opponent_card))
                }
                Spacer()
                
                Button(action: {
                    //Changes the card number randomly
                    
                    self.player_card = Int.random(in: 2...14)
                    self.opponent_card = Int.random(in: 2...14)
                    
                    // Adds a score to the winner
                    if self.player_card > self.opponent_card{
                        self.player_score += 1
                    }
                    else if self.player_card < self.opponent_card{
                        self.opponent_score += 1
                    }
                    else{
                        self.player_score += 1
                        self.opponent_score += 1
                    }
                    
                }, label: {
                    Image("dealbutton").renderingMode(.original)// Displays the image in its original form
                })
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("Your score:").bold().padding(.bottom,25)
                        Text(String(self.player_score))
                    }.padding(.leading,15).foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack{
                        Text("opponent score:").bold().padding(.bottom,25)
                        Text(String(self.opponent_score))
                    }.padding(.trailing,15).foregroundColor(.white)
                }
                Spacer()
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}