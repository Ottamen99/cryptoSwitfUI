//
//  MyCardView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 29.10.21.
//

import SwiftUI

struct MyCardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("$ 60'0000").font(.title).foregroundColor(Color.white)
                    Text("BTC ~ 1.4536723").font(.caption).foregroundColor(Color.white)
                }.frame(maxWidth: .infinity, alignment: .leading)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "star")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                        .background(Color.gray)
                        .clipShape(Circle())
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "star")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                        .background(Color.gray)
                        .clipShape(Circle())
                }
            }.frame(maxWidth: .infinity, alignment: .leading).padding()
            CreditCardView()
            HStack {
                Text("History").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.white)
                Text("See All").frame(maxWidth: .infinity, alignment: .trailing).foregroundColor(Color.white)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
            ScrollView {
                TransactionItem(amount: .constant(150), type: .constant("Deposit"))
                TransactionItem(amount: .constant(340), type: .constant("Withdraw"))
                TransactionItem(amount: .constant(500), type: .constant("Purchase"))
            }.padding()
            Spacer()
        }
    }
}

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
    }
}
