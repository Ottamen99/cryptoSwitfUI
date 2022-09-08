//
//  ContentView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 06.10.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        ZStack {
            VStack {
                CustomTopTabBar(tabIndex: $tabIndex)
                if tabIndex == 0 {
                    MyCoinsView()
                }
                else {
                    MyCardView()
                }
                Spacer()
            }
            .background(
                Image("backgroundImage2")
        )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
