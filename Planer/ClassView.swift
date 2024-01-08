//
//  ClassView.swift
//  Planer
//
//  Created by Jan Schwietzer on 08.01.24.
//

import SwiftUI

struct ClassView: View {
    let classNumber: Int
    let className: String
    let classTime: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 40)
                .foregroundStyle(Color(uiColor: .systemBackground))
            HStack {
                Text("\(classNumber).")
                Text(className)
                    .font(.title2)
                Spacer()
                Text(classTime)
            }
            .padding()
            .frame(width: 350, height: 40)
            .shadow(radius: 5)
        }
    }
}

#Preview {
    RootView()
}
