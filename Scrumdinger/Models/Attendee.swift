//
//  Attendee.swift
//  Scrumdinger
//
//  Created by Alimmz on 8/6/1404 AP.
//

import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
