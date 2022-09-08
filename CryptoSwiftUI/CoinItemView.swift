//
//  CoinItemView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 29.10.21.
//

import SwiftUI

struct CoinItemView: View {
    var color: Color
    @Binding var name: String
    @Binding var percentage: Int
    var body: some View {
        HStack {
            ZStack {
                Circle().foregroundColor(color).frame(width: 10, height: 10, alignment: .center)
                Circle()
                    .strokeBorder(color, lineWidth: 1).frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.0)/*@END_MENU_TOKEN@*/)
            }.padding(.vertical, 7)
                .padding(.leading, 15)
            Text(name + ": " + String(percentage) + "%").padding(.trailing, 10).foregroundColor(.white).font(.caption)
        }.background(Color.gray).cornerRadius(20)
        
    }
}

struct CoinItemView_Previews: PreviewProvider {
    static var previews: some View {
        CoinItemView(color: .orange, name: .constant("ETH"), percentage: .constant(29))
    }
}
