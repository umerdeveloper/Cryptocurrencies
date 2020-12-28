//
//  ContentView.swift
//  CryptoPredictor
//
//  Created by Umer Khan on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    var rates: [Coin] = [
        
        Coin(id: "BTC", name: "Bitcoin", price: "9733.95", icon: "bitcoin", lineCoordinates: [2000, 4000, 2000, 8000, 1000]),
        Coin(id: "LTC", name: "Litecoin", price: "98", icon: "litecoin", lineCoordinates: [1000, 4000, 5000, 8000, 8000]),
        Coin(id: "XIP", name: "Ripple", price: "0.90", icon: "ripple", lineCoordinates: [2000, 4000, 9000, 8000, 1000]),
        Coin(id: "TRX", name: "Tron", price: "98", icon: "tron", lineCoordinates: [8000, 7000, 5000, 1000, 4000]),
        Coin(id: "ETH", name: "Ethereum", price: "300.9", icon: "ethereum", lineCoordinates: [2000, 4000, 1000, 8000, 5000])
    ]
    
    var myWallet: [Coin] = [
        Coin(id: "XIP", name: "Ripple", price: "0.90", icon: "ripple", lineCoordinates: [2000, 4000, 5000, 8000, 1000]),
        Coin(id: "TRX", name: "Tron", price: "98", icon: "tron", lineCoordinates: [44, 25, 40, 90, 10]),
        Coin(id: "ETH", name: "Ethereum", price: "300.9", icon: "ethereum", lineCoordinates: [0.7, 0.9, 0.1, 0.2, 0.5])
    ]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                Image(systemName: "waveform.path.ecg")
                    .resizable()
                    .frame(width: 120, height: 100)
                    .padding()
                    .foregroundColor(.blue)
                
                LineCharController(lineCoordinates: [2, 9, 7], inline: true)
                    .frame (
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: 150
                    )
                    .padding()
                
                Text("Your Crypto Balance")
                    .foregroundColor(.blue)
                Text("$2,22.1")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                
                
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
                            
                            NavigationLink(destination: GraphCoinView(title: coin.name, lineCoordinates: coin.lineCoordinates)) {
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
