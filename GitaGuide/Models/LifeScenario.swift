//
//  LifeScenario.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation
import SwiftUI

// EXISTING V1.0
struct LifeScenario: Identifiable, Codable {
    let id = UUID()
    let title: String
    let description: String
    let category: LifeCategory
    let chapter: Int
    let heartResponse: String
    let dutyResponse: String
    let gitaWisdom: String
    let actionSteps: [String]
    let verse: String
    let verseNumber: String
    let stickFigureScene: String
    let tags: [String]
    
    var isFromChapterOne: Bool {
        return chapter == 1
    }
}

 /* NWWEER VERSION FOR JSON

struct LifeScenario: Identifiable, Codable {
    let id: UUID
    let title: String
    let description: String
    let category: LifeCategory
    let chapter: Int
    let heartResponse: String
    let dutyResponse: String
    let gitaWisdom: String
    let actionSteps: [String]
    let verse: String
    let verseNumber: String
    let stickFigureScene: String
    let tags: [String]
}
*/
// Journal Entry for user reflections
struct JournalEntry: Identifiable, Codable {
    let id = UUID()
    let scenarioId: UUID
    let userReflection: String
    let chosenPath: String // "heart" or "duty" or "balanced"
    let outcome: String
    let dateCreated: Date
    let rating: Int // 1-5 scale of how helpful the guidance was
}
