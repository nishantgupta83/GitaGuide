//
//  ScenarioLoader.swift
//  GitaGuide
//
//  Created by Nishant Gupta on 7/1/25.
//


import Foundation

class ScenarioLoader {
    static func loadScenarios(forChapter chapter: Int) -> [LifeScenario] {
        guard let url = Bundle.main.url(forResource: "Scenarios/chapter_\(chapter)", withExtension: "json") else {
            print("Missing JSON for chapter \(chapter)")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let scenarios = try JSONDecoder().decode([LifeScenario].self, from: data)
            return scenarios
        } catch {
            print("Failed to decode chapter \(chapter): \(error)")
            return []
        }
    }
}
