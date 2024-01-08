//
//  ContentView.swift
//  Planer
//
//  Created by Jan Schwietzer on 08.01.24.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            TabView {
                DayView(day: "Montag")
                DayView(day: "Dienstag")
                DayView(day: "Mittwoch")
                DayView(day: "Donnerstag")
                DayView(day: "Freitag")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AddClassView()
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            .background(Color(UIColor.systemGray5))
            .tabViewStyle(.page)
            .navigationTitle("Timetably")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.accentColor, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            
        }
    }
}

#Preview {
    RootView()
}
