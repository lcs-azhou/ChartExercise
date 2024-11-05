//
//  ContentView.swift
//  ChartExercise
//
//  Created by Ansheng Zhou on 2024-11-04.
//

import SwiftUI
import Charts

struct ExerciseTwoView: View {
    let houseData = [
        ("Matthews", 12.3, Color.red), ("Ross", 5.2, Color.orange),
        ("Moodie", 6.2, Color.yellow), ("Parent", 6.2, Color.green),
        ("Ondaatje", 7.6, Color.mint), ("Uplands", 8.1, Color.teal),
        ("Memorial", 9.5, Color.blue), ("Colebrook", 9.0, Color.indigo),
        ("Grove", 10.4, Color.purple), ("Rashleigh", 9.5, Color.pink),
        ("Cooper", 8.1, Color.cyan), ("Ryder", 8.1, Color.brown)
    ]
    
    var body: some View {
        VStack {
            Text("Percentage of students at LCS, by house")
                .font(.title)
                .padding()
            
            Chart {
                ForEach(houseData, id: \.0) { house, percentage, color in
                    SectorMark(
                        angle: .value("Percentage", percentage)
                    )
                    .foregroundStyle(color)
                    .annotation(position: .overlay) {
                        Text("\(String(format: "%.1f", percentage))%")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(height: 300)
            .padding()
        }
    }
}

#Preview {
    ExerciseTwoView()
}
