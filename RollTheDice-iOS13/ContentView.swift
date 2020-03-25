//
//  ContentView.swift
//  RollTheDice-iOS13
//
//  Created by Dennis Nesanoff on 25.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("GreenBackground").resizable().edgesIgnoringSafeArea(.all)
            Text("Hello, World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
