//
//  LineChartController.swift
//  CryptoPredictor
//
//  Created by Umer Khan on 28/12/2020.
//

import UIKit
import SwiftUI

struct LineCharController: UIViewRepresentable {
    
    let lineCoordinates: [CGFloat]
    let inline: Bool
    
    func makeUIView(context: Context) -> LineChart {
        
        let lineChart = LineChart()
        lineChart.addLine(lineCoordinates)
        
        if inline {
            lineChart.y.labels.visible = false
            lineChart.x.labels.values = ["Yesterday", "Today", "Tomorrow"]
            
        } else {
            lineChart.x.labels.values = ["Jan", "Feb", "Mar", "Apr", "May"]

        }
        
        
        return lineChart
        
    }
    
    func updateUIView(_ uiView: LineChart, context: Context) {
        //
    }
}
