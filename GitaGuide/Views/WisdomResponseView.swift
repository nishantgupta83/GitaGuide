//
//  WisdomResponseView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct WisdomResponseView: View {
    let scenario: LifeScenario
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var showingJournalEntry = false
    @State private var userReflection = ""
    @State private var chosenPath = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: scenario.category.icon)
                                .foregroundColor(scenario.category.color)
                            Text(scenario.category.rawValue)
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(String(format: "chapter_number".localized, scenario.chapter))
                                .font(.caption)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.orange.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Text(scenario.title)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    
                    // Scenario Description
                    VStack(alignment: .leading, spacing: 8) {
                        Text("the_dilemma".localized)
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                        Text(scenario.description)
                            .font(.body)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                    }
                    
                    // Gita Wisdom
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("🕉️")
                            Text("wisdom_from_gita".localized)
                                .font(.headline)
                                .foregroundColor(.orange)
                        }
                        
                        Text(scenario.gitaWisdom)
                            .font(.body)
                            .padding()
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.orange.opacity(0.1), Color.blue.opacity(0.1)]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .cornerRadius(12)
                        
                        // Verse Reference
                        HStack {
                            Image(systemName: "quote.bubble.fill")
                                .foregroundColor(.orange)
                            VStack(alignment: .leading, spacing: 2) {
                                Text(scenario.verse)
                                    .font(.body)
                                    .italic()
                                Text(scenario.verseNumber)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                    }
                    
                    // Action Steps
                    VStack(alignment: .leading, spacing: 12) {
                        Text("suggested_actions".localized)
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                        ForEach(Array(scenario.actionSteps.enumerated()), id: \.offset) { index, step in
                            HStack(alignment: .top, spacing: 12) {
                                Text("\(index + 1)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 20, height: 20)
                                    .background(Color.orange)
                                    .clipShape(Circle())
                                
                                Text(step)
                                    .font(.body)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    
                    // Call to Action
                    VStack(spacing: 12) {
                        Button(action: {
                            showingJournalEntry = true
                        }) {
                            HStack {
                                Image(systemName: "book.fill")
                                Text("reflect_journal".localized)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                        
                        Button("explore_more_scenarios".localized) {
                            dismiss()
                            // Navigate to scenarios tab
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                    }
                }
                .padding()
            }
            .navigationTitle("guidance".localized)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("done".localized) { dismiss() })
        }
        .sheet(isPresented: $showingJournalEntry) {
            JournalEntryView(scenario: scenario)
        }
    }
}

struct JournalEntryView: View {
    let scenario: LifeScenario
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var userReflection = ""
    @State private var chosenPath = "balanced"
    @State private var anticipatedOutcome = ""
    @State private var helpfulnessRating = 3
    
    var pathOptions: [(String, String, String)] {
        [
            ("heart", "follow_heart".localized, "💭"),
            ("duty", "follow_duty".localized, "⚖️"),
            ("balanced", "balanced_approach".localized, "⚖️💭")
        ]
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section("your_reflection".localized) {
                    TextEditor(text: $userReflection)
                        .frame(minHeight: 100)
                        .placeholder(when: userReflection.isEmpty) {
                            Text("reflection_placeholder".localized)
                                .foregroundColor(.secondary)
                        }
                }
                
                Section("your_chosen_path".localized) {
                    ForEach(pathOptions, id: \.0) { option in
                        HStack {
                            Text(option.2)
                            Text(option.1)
                            Spacer()
                            if chosenPath == option.0 {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.orange)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            chosenPath = option.0
                        }
                    }
                }
                
                Section("expected_outcome".localized) {
                    TextEditor(text: $anticipatedOutcome)
                        .frame(minHeight: 60)
                        .placeholder(when: anticipatedOutcome.isEmpty) {
                            Text("outcome_placeholder".localized)
                                .foregroundColor(.secondary)
                        }
                }
                
                Section("how_helpful_guidance".localized) {
                    HStack {
                        Text("not_helpful".localized)
                            .font(.caption)
                        Spacer()
                        HStack(spacing: 4) {
                            ForEach(1...5, id: \.self) { rating in
                                Image(systemName: rating <= helpfulnessRating ? "star.fill" : "star")
                                    .foregroundColor(.orange)
                                    .onTapGesture {
                                        helpfulnessRating = rating
                                    }
                            }
                        }
                        Spacer()
                        Text("very_helpful".localized)
                            .font(.caption)
                    }
                }
            }
            .navigationTitle("journal_entry".localized)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("cancel".localized) { dismiss() },
                trailing: Button("save".localized) {
                    saveJournalEntry()
                    dismiss()
                }
                .disabled(userReflection.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            )
        }
    }
    
    private func saveJournalEntry() {
        let entry = JournalEntry(
            scenarioId: scenario.id,
            userReflection: userReflection,
            chosenPath: chosenPath,
            outcome: anticipatedOutcome,
            dateCreated: Date(),
            rating: helpfulnessRating
        )
        scenariosManager.addJournalEntry(entry)
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .topLeading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

#Preview {
    WisdomResponseView(scenario: SampleData.allScenarios[0])
        .environmentObject(ScenariosManager())
}
