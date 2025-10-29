//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Alimmz on 10/26/25.
//

import SwiftUI
import SwiftData


@main
struct ScrumdingerApp: App {


    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
