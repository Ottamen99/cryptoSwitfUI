//
//  MyCoinsView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 29.10.21.
//

import SwiftUI

struct MyCoinsView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    CoinItemView(color: .orange, name: .constant("BTC"), percentage: .constant(29))
                    CoinItemView(color: .blue, name: .constant("ETH"), percentage: .constant(12))
                    CoinItemView(color: .yellow, name: .constant("ADA"), percentage: .constant(54))
                }
            }
            PieChart(data: .constant([0.1, 0.5, 0.3, 0.1, 0.5, 0.3]), labels: .constant(["ETH", "ALG", "ADA", "BTC", "SHIB", "ZOOM"]), colors: [.blue, .green, .red, .gray, .orange, .yellow], borderColor: .black)
                .frame(width: 320, height: 320, alignment: .center)
            Spacer()
        }
    }
}

struct MyCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCoinsView()
    }
}
