
import SwiftUI

struct war_case: View {
    var base:The_Game
    @State private var showActionSheet = false
    
    @State private var player_cards = [0,0,0]
    @State private var opponent_cards = [0,0,0]
    
    @State private var player_score = 0
    @State private var opponent_score = 0
    
    @State static var winner = -1
    
    var body: some View {
        ZStack{//Put the items in each other's background
            Image("background")
                .resizable()
                .padding(.bottom, -80.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(){
                HStack(alignment: .center){
                    Text("You")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.leading, 50.0)
                        
                    Spacer()
                    
                    Text("Opponent")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.trailing)
                        
                }
                HStack{//Put the items next to each other
                    // At first shows the back of the card
                    if self.player_cards[0] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(player_cards[0]))
                    }
                    
                    Spacer()
                    
                    if self.opponent_cards[0] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(opponent_cards[0]))
                    }
                }
                .padding(.horizontal, 22.5)
                
                if self.player_cards[0] == 0{
                    Button(action: {
                        self.flips_cards()
                        //self.base.set_war_status()
                        
                        
                    }, label: {
                        Image("dealbutton").renderingMode(.original).padding(.top, 200.0)// Displays the image in its original form
                    }).navigationBarBackButtonHidden(true)
                        .frame(height:-5.0)
                }
                else{
                    Button(action: {
                        self.base.set_war_status()
                    }, label: {
                        Image("backButton").renderingMode(.original).padding(.top, 200.0)// Displays the image in its original form
                    }).navigationBarBackButtonHidden(true)
                        .frame(height:-5.0)
                }
                
                
                Spacer().padding()
                .frame(height: 20.0)
                HStack{//Put the items next to each other
                    // At first shows the back of the card
                    if self.player_cards[1] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(player_cards[1]))
                    }
                    
                    Spacer()
                    
                    if self.opponent_cards[1] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(opponent_cards[1]))
                    }
                }
                .padding(.horizontal, 22.5)
                Spacer().padding()
                .frame(height: 20.0)
                HStack{//Put the items next to each other
                    // At first shows the back of the card
                    if self.player_cards[2] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(player_cards[2]))
                    }
                    
                    Spacer()
                    
                    if self.opponent_cards[2] == 0{
                        Image("back")
                    }
                    else{
                    // Changes the card according to the random number
                    Image("card" + String(opponent_cards[2]))
                    }
                }
                .padding(.horizontal, 22.5)
                Spacer().padding()
                .frame(height: 20.0)
                
/*
                Text("blob \(war_case.winner)")
                    .foregroundColor(Color.white)
*/
                
                HStack{
                    Text(String(self.player_score)).font(.largeTitle)
                    .fontWeight(.bold)
                    
                    Spacer().padding()
                        .frame(width: 193.0)
                    
                    Text(String(self.opponent_score)).font(.largeTitle)
                    .fontWeight(.bold)
                }.padding(.leading,0).foregroundColor(.white)
            }
        }
    }
    func flips_cards() {
        for card_num in 0...2 {
            self.player_cards[card_num] = Int.random(in: 2...14)
            self.player_score += player_cards[card_num]
            self.opponent_cards[card_num] = Int.random(in: 2...14)
            self.opponent_score += opponent_cards[card_num]
        }
        if self.player_score > self.opponent_score{
            war_case.winner = 1
            print(war_case.winner)
        }
        else if self.player_score < self.opponent_score{
            war_case.winner = 0
            print(war_case.winner)
        }
        else{
            print(war_case.winner)
            self.flips_cards()
        }
    }
    
    
}

struct war_case_Previews: PreviewProvider {
    static var previews: some View {
        war_case(base: The_Game(player_name: "String"))
    }
}
