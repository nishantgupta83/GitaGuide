import SwiftUI

struct StandaloneJournalEntryView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    @State private var reflectionText: String = ""
    @State private var chosenCategory: LifeCategory? = nil
    @State private var selectedRating: Int = 3
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("your_reflection".localized)) {
                    TextEditor(text: $reflectionText)
                        .frame(height: 150)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3))
                        )
                }
                
                Section(header: Text("select_category".localized)) {
                    Picker("category".localized, selection: $chosenCategory) {
                        Text("none".localized).tag(Optional<LifeCategory>.none)
                        ForEach(LifeCategory.allCases, id: \.self) { category in
                            Text(category.localizedName).tag(Optional(category))
                        }
                    }
                }
                
                Section(header: Text("rate_insight".localized)) {
                    HStack {
                        ForEach(1...5, id: \.self) { i in
                            Image(systemName: i <= selectedRating ? "star.fill" : "star")
                                .foregroundColor(.orange)
                                .onTapGesture {
                                    selectedRating = i
                                }
                        }
                    }
                }
                
                Section {
                    Button("save_entry".localized) {
                        let newEntry = JournalEntry(
                            scenarioId: UUID(), // for standalone manual entries
                            userReflection: reflectionText.trimmingCharacters(in: .whitespacesAndNewlines),
                            chosenPath: chosenCategory?.rawValue ?? "none",
                            outcome: "",
                            dateCreated: Date(),
                            rating: selectedRating
                        )
                        scenariosManager.addJournalEntry(newEntry)
                        dismiss()
                    }
                    .disabled(reflectionText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
            .navigationTitle("new_journal_entry".localized)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("cancel".localized) {
                        dismiss()
                    }
                }
            }
        }
    }
}
