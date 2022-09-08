//
//  CreditCardView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 07.10.21.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            VStack(alignment: .leading) {
                HStack {
                    HStack {
                        Image(systemName: "bitcoinsign.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.vertical, 20)
                            .padding(.leading, 5)
                        Text("BANEXCOIN")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "creditcard").resizable().aspectRatio(contentMode: .fit)
                        .padding(.vertical, 20)
                        .padding(.trailing, 15)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Text("1234").fontWeight(.light).frame(maxWidth: .infinity)
                    Text("1234").fontWeight(.light).frame(maxWidth: .infinity)
                    Text("1234").fontWeight(.light).frame(maxWidth: .infinity)
                    Text("1234").fontWeight(.light).frame(maxWidth: .infinity)
                }.frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Expire").font(.footnote).fontWeight(.light)
                        Text("01/21").fontWeight(.light)
                    }.padding(.leading, 30).padding(.bottom, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(alignment: .leading) {
                        Text("Code").font(.footnote).fontWeight(.light)
                        Text("***").fontWeight(.light)
                    }.padding(.bottom, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image("Mastercard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 10)
                        .padding(.leading, 10)
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(width: 350, height: 225)
                .padding(.horizontal, 10)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30))
                .foregroundColor(.white)
                .cornerRadius(30)
        } else {
            // Fallback on earlier versions
        }
            
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
