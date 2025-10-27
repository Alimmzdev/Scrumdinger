//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Shahrooz Ansari on 10/26/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums: [DailyScrum] = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
