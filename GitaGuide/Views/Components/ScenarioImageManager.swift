//
//  ScenarioImageManager.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct ScenarioImageManager {
    
    // All available Gita images
    static let allImages = [
        "bg_1", "bg_2", "bg_3", "bg_4",
        "bg_5","bg_6", "bg_7", "bg_8",
        "bg_9", "bg_10","bg_11","bg_12",
        "bg_13","bg_14","bg_15"
    ]
    
    // Category-specific image mapping
    static let categoryImages: [LifeCategory: [String]] = [
            .work:        ["gita-image-1", "gita-image-2", "gita-image-3","gita-image-8"],
            .digital:      ["gita-image-4", "gita-image-5", "gita-image-6","gita-image-15"],
            .education :        ["gita-image-7", "gita-image-8", "gita-image-9","gita-image-13"],
            .mentalHealth :  ["gita-image-10", "gita-image-11", "gita-image-13","gita-image-9"],
            .relationships:["gita-image-15", "gita-image-16", "gita-image-1","gita-image-6"],
            .ethics:      ["gita-image-2", "gita-image-3", "gita-image-4","gita-image-11"],
            .spiritual :    ["gita-image-5", "gita-image-6", "gita-image-7","gita-image-16"]
    ]
    
    // Get image for specific scenario
    static func getImageForScenario(_ scenario: LifeScenario) -> String {
        // Use scenario ID to ensure consistent image per scenario
        let hash = abs(scenario.id.hashValue)
        
        // Get category-specific images
        if let categorySpecificImages = categoryImages[scenario.category] {
            let index = hash % categorySpecificImages.count
            return categorySpecificImages[index]
        }
        
        // Fallback to any image
        let index = hash % allImages.count
        return allImages[index]
    }
    
    // Get random image
    static func getRandomImage() -> String {
        return allImages.randomElement() ?? "bg1"
    }
    
    // Get image for category
    static func getImageForCategory(_ category: LifeCategory) -> String {
        if let categorySpecificImages = categoryImages[category] {
            return categorySpecificImages.randomElement() ?? allImages.randomElement()!
        }
        return allImages.randomElement()!
    }
    
    // Get daily image (changes each day but stays same for the day)
    static func getDailyImage() -> String {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = dayOfYear % allImages.count
        return allImages[index]
    }
}
