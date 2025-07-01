//
//  ScenariosManager.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation
import SwiftUI

extension Notification.Name {
    static let languageDidChange = Notification.Name("languageDidChange")
}
class ScenariosManager: ObservableObject {
    @Published var scenarios: [LifeScenario] = []
    @Published var journalEntries: [JournalEntry] = []
    @Published var currentScenario: LifeScenario?
    @Published var dailyScenario: LifeScenario?
    @StateObject private var localizationManager = LocalizationManager.shared
    private var localizationCancellable: Any?
    
    init() {
        observeLanguageChanges()
        loadScenarios()
        loadJournalEntries()
        setDailyScenario()
    }
    
    private func observeLanguageChanges() {
        localizationCancellable = NotificationCenter.default
            .publisher(for: .languageDidChange)
            .sink { [weak self] _ in
              //  self?.currentLanguage = LocalizationManager.shared.currentLanguage
                self?.refreshLocalizedContent()
            }
    }
    private func refreshLocalizedContent() {
        // Reload if localized strings change how data is displayed
        // If you store only keys (not full localized text), you can skip this
        objectWillChange.send()
    }
    private func loadScenarios() {
        // For now, use existing SampleData until ComprehensiveScenarioData is ready
        // scenarios = SampleData.allScenarios
       
        // TODO: Replace with ComprehensiveScenarioData.allScenarios when ready
        scenarios = ComprehensiveScenarioData.allScenarios
        print("✅ Loaded \(scenarios.count) comprehensive scenarios")
    }
    
    private func loadJournalEntries() {
        // Load from UserDefaults or Core Data in real implementation
        journalEntries = []
    }
    
    private func setDailyScenario() {
        // Set a new daily scenario based on date
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = dayOfYear % scenarios.count
        dailyScenario = scenarios[index]
    }
    
    func addJournalEntry(_ entry: JournalEntry) {
        journalEntries.append(entry)
        // Save to persistent storage
    }
    
    // ORIGINAL FUNCTIONS (kept for compatibility)
    func getScenariosForCategory(_ category: LifeCategory) -> [LifeScenario] {
        return scenarios.filter { $0.category == category }
    }
    
    func getRandomScenario() -> LifeScenario {
        return scenarios.randomElement() ?? scenarios.first!
    }
    
    // ORIGINAL SEARCH (kept for compatibility)
    func searchScenarios(query: String) -> [LifeScenario] {
        guard !query.isEmpty else { return scenarios }
        
        return scenarios.filter { scenario in
            scenario.title.localizedCaseInsensitiveContains(query) ||
            scenario.description.localizedCaseInsensitiveContains(query) ||
            scenario.tags.contains { $0.localizedCaseInsensitiveContains(query) }
        }
    }
    
    // NEW ENHANCED FUNCTIONS
    
    // Enhanced search with chapter and category filtering
    func searchScenariosAdvanced(query: String, chapter: Int? = nil, category: LifeCategory? = nil) -> [LifeScenario] {
        var filtered = scenarios
        
        // Filter by chapter if specified
        if let chapter = chapter {
            filtered = filtered.filter { $0.chapter == chapter }
        }
        
        // Filter by category if specified
        if let category = category {
            filtered = filtered.filter { $0.category == category }
        }
        
        // Filter by search query
        if !query.isEmpty {
            filtered = filtered.filter { scenario in
                scenario.title.localizedCaseInsensitiveContains(query) ||
                scenario.description.localizedCaseInsensitiveContains(query) ||
                scenario.gitaWisdom.localizedCaseInsensitiveContains(query) ||
                scenario.tags.contains { $0.localizedCaseInsensitiveContains(query) }
            }
        }
        
        return filtered
    }
    
    // Get scenarios by chapter
    func getScenariosForChapter(_ chapterNumber: Int) -> [LifeScenario] {
        return scenarios.filter { $0.chapter == chapterNumber }
    }
    
    // Get random scenario from specific chapter
    func getRandomScenario(fromChapter chapterNumber: Int? = nil) -> LifeScenario {
        if let chapter = chapterNumber {
            let chapterScenarios = getScenariosForChapter(chapter)
            return chapterScenarios.randomElement() ?? scenarios.randomElement()!
        }
        return scenarios.randomElement() ?? scenarios.first!
    }
    
    // Get scenarios by multiple chapters
    func getScenariosForChapters(_ chapterNumbers: [Int]) -> [LifeScenario] {
        return scenarios.filter { chapterNumbers.contains($0.chapter) }
    }
    
    // Get scenarios by tag
    func getScenariosWithTag(_ tag: String) -> [LifeScenario] {
        return scenarios.filter { scenario in
            scenario.tags.contains { $0.localizedCaseInsensitiveContains(tag) }
        }
    }
    
    // Get chapter statistics
    func getChapterStats() -> [Int: Int] {
        var stats: [Int: Int] = [:]
        for scenario in scenarios {
            stats[scenario.chapter, default: 0] += 1
        }
        return stats
    }
    
    // Get category statistics
    func getCategoryStats() -> [LifeCategory: Int] {
        var stats: [LifeCategory: Int] = [:]
        for scenario in scenarios {
            stats[scenario.category, default: 0] += 1
        }
        return stats
    }
    
    // Get total scenarios count
    var totalScenariosCount: Int {
        return scenarios.count
    }
    
    // Get unique chapters represented
    var availableChapters: [Int] {
        return Array(Set(scenarios.map { $0.chapter })).sorted()
    }
    
    // Get available categories
    var availableCategories: [LifeCategory] {
        return Array(Set(scenarios.map { $0.category }))
    }
}
