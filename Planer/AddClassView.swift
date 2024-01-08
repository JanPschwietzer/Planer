//
//  AddClassView.swift
//  Planer
//
//  Created by Jan Schwietzer on 08.01.24.
//

import SwiftUI

struct AddClassView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var day = "Mo"
    @State private var anzahlStunden: Int = 1
    @State private var datePicker: [Date] = [
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date(),
        Date()
    ] // hier muss eine andere Idee gewählt werden. Dies ist schlechter Code.
    
    var body: some View {
        ScrollView {
            Picker("Tag", selection: $day) {
                ForEach(["Mo", "Di", "Mi", "Do", "Fr"], id: \.self) { item in
                    Text(item)
                }
            }
            .pickerStyle(.segmented)
            
            Text("Stundenplan für \(getFullDay())")
                .font(.title)
                .padding()
            
            HStack {
                Text("Anzahl der Stunden:")
                Picker("Anzahl Stunden", selection: $anzahlStunden) {
                    ForEach(1..<11) { i in
                        Text("\(i)")
                    }
                }
            }
            .padding()
            ForEach(0...anzahlStunden, id: \.self) { i in
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350, height: 50)
                        .foregroundStyle(Color(uiColor: .systemBackground))
                        .shadow(radius: 5)
                    VStack {
                        HStack {
                            Text("\(i + 1).")
                                .padding(.trailing, 5)
                            TextField("Fach", text: .constant(""))
                                .textFieldStyle(.roundedBorder)
                            Spacer()
                            DatePicker("Zeit", selection: $datePicker[i], displayedComponents: .hourAndMinute)
                                .labelsHidden()
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    }
                }
            }
            .padding(.horizontal)
        }
        .background(Color(UIColor.systemGray5))
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "checkmark")
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("Einstellungen")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.accentColor, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
    
    func getFullDay() -> String {
        switch day {
        case "Mo":
            return "Montag"
        case "Di":
            return "Dienstag"
        case "Mi":
            return "Mittwoch"
        case "Do":
            return "Donnerstag"
        case "Fr":
            return "Freitag"
        default:
            return "Montag"
        }
    }
}

#Preview {
    RootView()
}
