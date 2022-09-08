//
//  TestView.swift
//  CryptoSwiftUI
//
//  Created by Ottavio Buonomo on 14.10.21.
//

import SwiftUI

struct TestView: View {
    var body: some View {
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
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .cornerRadius(30)
            
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
