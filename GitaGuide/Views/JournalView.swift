//
//  JournalView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct JournalView: View {
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var selectedFilter: JournalFilter = .all
    @State private var showNewEntry = false
    
    enum JournalFilter: String, CaseIterable {
        case all = "all"
        case recent = "recent"
        case highRated = "high_rated"
        case byCategory = "by_category"
        
        var localizedString: String {
            return self.rawValue.localized
        }
    }
    
    var filteredEntries: [JournalEntry] {
        switch selectedFilter {
        case .all:
            return scenariosManager.journalEntries.sorted { $0.dateCreated > $1.dateCreated }
        case .recent:
            let oneWeekAgo = Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date()
            return scenariosManager.journalEntries
                .filter { $0.dateCreated >= oneWeekAgo }
                .sorted { $0.dateCreated > $1.dateCreated }
        case .highRated:
            return scenariosManager.journalEntries
                .filter { $0.rating >= 4 }
                .sorted { $0.dateCreated > $1.dateCreated }
        case .byCategory:
            return scenariosManager.journalEntries.sorted { $0.dateCreated > $1.dateCreated }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if scenariosManager.journalEntries.isEmpty {
                    EmptyJournalView()
                } else {
                    VStack {
                        // Filter Picker
                        Picker("Filter", selection: $selectedFilter) {
                            ForEach(JournalFilter.allCases, id: \.self) { filter in
                                Text(filter.localizedString).tag(filter)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                        
                        // Journal Stats
                        JournalStatsView()
                        
                        // Journal Entries List
                        List(filteredEntries) { entry in
                            JournalEntryDetailView(entry: entry)
                                .listRowSeparator(.hidden)
                        }
                        .listStyle(PlainListStyle())
                    }
                }
            }
            .navigationTitle("my_journal".localized)
            .sheet(isPresented: $showNewEntry) {
                StandaloneJournalEntryView()
                    .environmentObject(scenariosManager)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showNewEntry = true }) {
                        Image(systemName: "plus")
                    }
                }
            }

        }
    }
}

struct EmptyJournalView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "book.fill")
                .font(.system(size: 60))
                .foregroundColor(.orange.opacity(0.6))
            
            Text("start_wisdom_journey".localized)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text("journal_description".localized)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            Button("explore_scenarios".localized) {
                // Navigate to scenarios
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}

struct JournalStatsView: View {
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    var averageRating: Double {
        let ratings = scenariosManager.journalEntries.map { $0.rating }
        return ratings.isEmpty ? 0 : Double(ratings.reduce(0, +)) / Double(ratings.count)
    }
    
    var totalEntries: Int {
        scenariosManager.journalEntries.count
    }
    
    var categoriesExplored: Int {
        Set(scenariosManager.journalEntries.compactMap { entry in
            scenariosManager.scenarios.first { $0.id == entry.scenarioId }?.category
        }).count
    }
    
    var body: some View {
        HStack(spacing: 20) {
            UnifiedStatCard.simple(
                title: "entries".localized,
                value: "\(totalEntries)",
                icon: "doc.text.fill",
                color: .blue
            )
            
            UnifiedStatCard.simple(
                title: "avg_rating".localized,
                value: String(format: "%.1f", averageRating),
                icon: "star.fill",
                color: .orange
            )
            
            UnifiedStatCard.simple(
                title: "categories".localized,
                value: "\(categoriesExplored)",
                icon: "folder.fill",
                color: .green
            )
        }
        .padding(.horizontal)
    }
}

struct JournalEntryDetailView: View {
    let entry: JournalEntry
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    var relatedScenario: LifeScenario? {
        scenariosManager.scenarios.first { $0.id == entry.scenarioId }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Header with scenario title
            if let scenario = relatedScenario {
                HStack {
                    Image(systemName: scenario.category.icon)
                        .foregroundColor(scenario.category.color)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(scenario.title)
                            .font(.headline)
                            .lineLimit(1)
                        Text(scenario.category.rawValue)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 2) {
                        ForEach(1...5, id: \.self) { rating in
                            Image(systemName: rating <= entry.rating ? "star.fill" : "star")
                                .foregroundColor(.orange)
                                .font(.caption)
                        }
                    }
                }
            }
            
            // User reflection
            Text(entry.userReflection)
                .font(.body)
                .lineLimit(nil)
            
            // Chosen path and outcome
            if !entry.chosenPath.isEmpty {
                HStack {
                    Text("path_chosen".localized)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text(entry.chosenPath.capitalized)
                        .font(.caption)
                        .fontWeight(.medium)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(4)
                }
            }
            
            if !entry.outcome.isEmpty {
                Text("\("expected_outcome_label".localized) \(entry.outcome)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .italic()
            }
            
            // Date
            Text(entry.dateCreated, style: .date)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
    }
}

#Preview {
    JournalView()
        .environmentObject(ScenariosManager())
}
