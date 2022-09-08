//
//  TransactionItem.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 29.10.21.
//

import SwiftUI

struct TransactionItem: View {
    @Binding var amount: Int
    @Binding var type: String
    var body: some View {
        if #available(iOS 15.0, *) {
            HStack {
                Image(systemName: "wallet.pass").foregroundColor(Color.white)
                Text(type).frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.white)
                Text(String(amount) + " CHF").frame(maxWidth: .infinity, alignment: .center).foregroundColor(Color.white)
                    .padding(.trailing, 10).border(width: 1, edges: [.trailing], color: .white)
                Image(systemName: "arrow.forward").foregroundColor(Color.white)
            }.padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30))
                .cornerRadius(20)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct TransactionItem_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItem(amount: .constant(150), type: .constant("Deposit"))
    }
}
