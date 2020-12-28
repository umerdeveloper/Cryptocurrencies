//
//  ContentView.swift
//  CryptoPredictor
//
//  Created by Umer Khan on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    var rates: [Coin] = [
    
        Coin(id: "BTC", name: "Bitcoin", price: "9733.95", icon: "bitcoin"),
        Coin(id: "LTC", name: "Litecoin", price: "98", icon: "litecoin"),
        Coin(id: "XIP", name: "Ripple", price: "0.90", icon: "ripple"),
        Coin(id: "TRX", name: "Tron", price: "98", icon: "tron"),
        Coin(id: "ETH", name: "Ethereum", price: "300.9", icon: "ethereum")
    ]
    
    var myWallet: [Coin] = [
        Coin(id: "XIP", name: "Ripple", price: "0.90", icon: "ripple"),
        Coin(id: "TRX", name: "Tron", price: "98", icon: "tron"),
        Coin(id: "ETH", name: "Ethereum", price: "300.9", icon: "ethereum")
    ]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                Image(systemName: "waveform.path.ecg")
                    .resizable()
                    .frame(width: 120, height: 100)
                    .padding()
                    .foregroundColor(.orange)
                
                Text("Your Crypto Balance")
                    .foregroundColor(.orange)
                Text("$2,22.1")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.orange)
                
                
                List {
                    Section(header: Text("My Wallet")) {
                        ForEach(myWallet) { coin in
                            HStack {
                                Image(coin.icon)
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                Text("\(coin.name) - \(coin.id)")
                                
                                Spacer()
                                
                                Text("$\(coin.price)")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    
                    Section(header: Text("Current Rates")) {
                        ForEach(rates) { coin in
                            
                            NavigationLink(destination: Text("Hello")) {
                                HStack {
                                    Image(coin.icon)
                                        .resizable()
                                        .frame(width: 32, height: 32)
                                    Text("\(coin.name) - \(coin.id)")
                                    
                                    Spacer()
                                    
                                    Text("$\(coin.price)")
                                        .fontWeight(.bold)
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Dashboard"))
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
