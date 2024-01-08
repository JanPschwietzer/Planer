//
//  DayView.swift
//  Planer
//
//  Created by Jan Schwietzer on 08.01.24.
//

import SwiftUI

struct DayView: View {
    
    let day: String
    
    var body: some View {
        ScrollView {
            Text(day)
                .font(.title)
                .padding(.top, 20)
            ClassView(classNumber: 1, className: "Mathe", classTime: "8:00")
            ClassView(classNumber: 2, className: "Biologie", classTime: "9:00")
            ClassView(classNumber: 3, className: "Erdkunde", classTime: "10:00")
            ClassView(classNumber: 4, className: "Politik", classTime: "11:00")
            
        }
    }
}

#Preview {
    RootView()
}
