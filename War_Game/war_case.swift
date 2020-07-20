
import SwiftUI

struct war_case: View {
    
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
                    if self.player_card == 0 &&
                        self.opponent_card == 0{
                        Image("back")
                        Spacer()
                        Image("back")
                    }
                    else{
                        // Changes the card according to the random number
                        Image("card" + String(player_card))
                        Spacer()
                        Image("card" + String(opponent_card))
                    }
                }
                .padding(.horizontal, 22.5)
                
                Spacer().padding()
                .frame(height: 20.0)
                HStack{//Put the items next to each other
                    // At first shows the back of the card
                    if self.player_card == 0 &&
                        self.opponent_card == 0{
                        Image("back")
                        Spacer()
                        Image("back")
                    }
                    else{
                        // Changes the card according to the random number
                        Image("card" + String(player_card))
                        Spacer()
                        Image("card" + String(opponent_card))
                    }
                }
                .padding(.horizontal, 22.5)
                Spacer().padding()
                .frame(height: 20.0)
                HStack{//Put the items next to each other
                    // At first shows the back of the card
                    if self.player_card == 0 &&
                        self.opponent_card == 0{
                        Image("back")
                        Spacer()
                        Image("back")
                    }
                    else{
                        // Changes the card according to the random number
                        Image("card" + String(player_card))
                        Spacer()
                        Image("card" + String(opponent_card))
                    }
                }
                .padding(.horizontal, 22.5)
                Spacer().padding()
                .frame(height: 20.0)
                
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
}

struct war_case_Previews: PreviewProvider {
    static var previews: some View {
        war_case()
    }
}
