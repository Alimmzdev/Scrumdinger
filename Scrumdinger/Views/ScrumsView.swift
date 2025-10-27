//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Alimmz on 10/26/25.
//

import SwiftUI
import ThemeKit


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(scrums: $scrums)
        }
    }
}


#Preview {
    @Previewable @State var scrums = DailyScrum.sampleData
    ScrumsView(scrums: $scrums)
}
