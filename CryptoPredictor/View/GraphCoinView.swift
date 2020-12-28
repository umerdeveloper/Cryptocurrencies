//
//  GraphCoinView.swift
//  CryptoPredictor
//
//  Created by Umer Khan on 28/12/2020.
//

import SwiftUI

struct GraphCoinView: View {
    let title: String
    let lineCoordinates: [CGFloat]
    
    var body: some View {
        LineCharController(lineCoordinates: lineCoordinates, inline: false)
            .padding(.leading, 30)
            .navigationBarTitle(Text(title))
    }
}

struct GraphCoinView_Previews: PreviewProvider {
    static var previews: some View {
        GraphCoinView(title: "BTC", lineCoordinates: [3000, 6000, 9000, 2000])
    }
}
