//
//  ContentView.swift
//  RollTheDice-iOS13
//
//  Created by Dennis Nesanoff on 25.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("joker")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                HStack {
                    DiceView(numberString: leftDiceNumber)
                    DiceView(numberString: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 100.0, height: 100.0)
                }
                .background(Color(red: 0.6060078144, green: 0.1118048355, blue: 0.1191012636))
            }
        }
    }
}

struct DiceView: View {
    let numberString: Int
    var body: some View {
        Image("Dice\(numberString)")
            .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


