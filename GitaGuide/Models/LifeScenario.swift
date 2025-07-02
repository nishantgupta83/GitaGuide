//
//  LifeScenario.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation
import SwiftUI

// EXISTING V1.0
/*
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
*/

 // NISHANT V5.0 NEWEER VERSION FOR JSON

struct LifeScenario: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var category: LifeCategory
    var chapter: Int
    var heartResponse: String
    var dutyResponse: String
    var gitaWisdom: String
    var actionSteps: [String]
    var verse: String
    var verseNumber: String
    var stickFigureScene: String
    var tags: [String]

    enum CodingKeys: String, CodingKey {
        case title, description, category, chapter, heartResponse, dutyResponse, gitaWisdom, actionSteps, verse, verseNumber, stickFigureScene, tags
    }
}

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
