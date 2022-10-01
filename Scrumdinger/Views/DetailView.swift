//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Mary Moreira on 01/10/2022.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                }
                .accessibilityElement(children: .combine)
                .padding(4)
                .foregroundColor(scrum.theme.accentColor)
                .background(scrum.theme.mainColor)
                .cornerRadius(4)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
