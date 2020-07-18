import SwiftUI

struct ContentView: View {
    @State private var player_card = 0
    @State private var opponent_card = 0
    
    @State private var player_score = 0
    @State private var opponent_score = 0
    
    var body: some View {
        
        ZStack{//Put the items in each other's background
            
            Image("background")
                .resizable()
                .padding(.bottom, -80.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack{//Put the items on top of each other
                Spacer()
                Image("logo")
                
                Spacer()
                    .padding()
                    .frame(height: 45.0) // Adds space between the top object and the bottom object
                
                
                VStack(){
                    HStack(){
                        Text(" You")
                            .font(.title)
                        .foregroundColor(Color.white)
                            .padding(.leading, 20.0)
                        
                        Text("Opponent")
                            .font(.title)
                        .foregroundColor(Color.white)
                            .padding(.leading, 50.0)
                    }
                    Spacer().padding()
                    .frame(height: 20.0)
                    HStack{//Put the items next to each other
                        // At first shows the back of the card
                        if self.player_card == 0 &&
                            self.opponent_card == 0{
                            Image("back")
                            
                            Image("back")
                        }
                        else{
                            // Changes the card according to the random number
                            Image("card" + String(player_card))
                            Image("card" + String(opponent_card))
                        }
                    }
                }
                
                Spacer()
                    .frame(height: 88.0)
                Button(action: {
                    self.button_action()
                    
                }, label: {
                    Image("dealbutton").renderingMode(.original).padding([.leading, .bottom], -25.0)// Displays the image in its original form
                })
                
                Spacer().frame(height: 40.0)
                
                HStack{
                    VStack{
                        Text("Your score:").font(.title).bold().padding(.bottom,25)
                        
                        Spacer().frame(height: 16.5)
                        
                        Text(String(self.player_score)).font(.largeTitle)
                        .fontWeight(.bold)
                    }.padding(.leading,15).foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack{
                        VStack(){
                            Text("opponent ").font(.title).bold().padding(.bottom,25)
                            
                            Spacer().frame(height: -25.0)
                            
                            Text("score:").font(.title).bold().padding(.bottom,25)
                        }
                        
                        Spacer().frame(height: -15.0)
                        
                        Text(String(self.opponent_score))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            
                    }.padding(.trailing,15).foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
    
    func button_action(){
        //Changes the card number randomly Between 2 and 14 (Ace card)
        
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
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
