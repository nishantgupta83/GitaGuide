//
//  ChapterBrowserView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI


/*
 NISHANT - WORKING CODe 5.0
 
struct ChapterBrowserView: View {
    @StateObject private var chapterManager = GitaChapterManager()
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var selectedChapter: GitaChapter?
    @State private var searchText = ""
    
    var filteredChapters: [GitaChapter] {
        if searchText.isEmpty {
            return chapterManager.chapters
        } else {
            return chapterManager.chapters.filter { chapter in
                chapter.title.localizedCaseInsensitiveContains(searchText) ||
                chapter.theme.localizedCaseInsensitiveContains(searchText) ||
                chapter.sanskritTitle.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    VStack(spacing: 8) {
                        Text("chapters_wisdom_title".localized)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("explore_complete_gita".localized)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top)
                    
                    // Search bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.secondary)
                        TextField("search_chapters".localized, text: $searchText)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    .padding(.horizontal)
                    
                    // Chapters grid
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 16) {
                        ForEach(filteredChapters) { chapter in
                            ChapterCardView(chapter: chapter)
                                .onTapGesture {
                                    selectedChapter = chapter
                                }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarHidden(true)
        }
        .sheet(item: $selectedChapter) { chapter in
            ChapterDetailView(chapter: chapter)
        }
    }
}


struct ChapterCardView: View {
    let chapter: GitaChapter
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    var chapterScenarios: [LifeScenario] {
        scenariosManager.scenarios.filter { $0.chapter == chapter.number }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Chapter header
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text(String(format: "chapter_number".localized, chapter.number))
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(chapter.title)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                }
                Spacer()
                Image(systemName: chapter.icon)
                    .font(.title2)
                    .foregroundColor(chapter.color)
            }
            
            // Sanskrit title
            Text(chapter.sanskritTitle)
                .font(.caption)
                .italic()
                .foregroundColor(.secondary)
            
            // Theme
            Text(chapter.theme)
                .font(.subheadline)
                .foregroundColor(chapter.color)
                .fontWeight(.medium)
            
            // Scenario count
            HStack {
                Image(systemName: "list.bullet")
                    .foregroundColor(.secondary)
                Text("\(chapterScenarios.count) \("scenarios".localized)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(chapter.verseCount) \("verses".localized)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(chapter.color.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(chapter.color.opacity(0.3), lineWidth: 1)
                )
        )
    }
}

 
 struct ChapterDetailView: View {
     let chapter: GitaChapter
     @Environment(\.dismiss) private var dismiss
     @EnvironmentObject var scenariosManager: ScenariosManager
     
     var chapterScenarios: [LifeScenario] {
         scenariosManager.scenarios.filter { $0.chapter == chapter.number }
     }
     
     var body: some View {
         NavigationView {
             ScrollView {
                 VStack(alignment: .leading, spacing: 24) {
                     // Header
                     VStack(alignment: .leading, spacing: 12) {
                         HStack {
                             Text(String(format: "chapter_number".localized, chapter.number))
                                 .font(.caption)
                                 .foregroundColor(.secondary)
                             Spacer()
                             Image(systemName: chapter.icon)
                                 .font(.title)
                                 .foregroundColor(chapter.color)
                         }
                         
                         Text(chapter.title)
                             .font(.title)
                             .fontWeight(.bold)
                         
                         Text(chapter.sanskritTitle)
                             .font(.subheadline)
                             .italic()
                             .foregroundColor(.secondary)
                         
                         Text(chapter.theme)
                             .font(.headline)
                             .foregroundColor(chapter.color)
                     }
                     
                     // Description
                     VStack(alignment: .leading, spacing: 8) {
                         Text("overview".localized)
                             .font(.headline)
                         Text(chapter.description)
                             .font(.body)
                     }
                     
                     // Key teachings
                     VStack(alignment: .leading, spacing: 12) {
                         Text("key_teachings".localized)
                             .font(.headline)
                         
                         ForEach(Array(chapter.keyTeachings.enumerated()), id: \.offset) { index, teaching in
                             HStack(alignment: .top, spacing: 12) {
                                 Text("\(index + 1)")
                                     .font(.caption)
                                     .fontWeight(.bold)
                                     .foregroundColor(.white)
                                     .frame(width: 20, height: 20)
                                     .background(chapter.color)
                                     .clipShape(Circle())
                                 
                                 Text(teaching)
                                     .font(.body)
                             }
                         }
                     }
                     
                     // Modern applications
                     VStack(alignment: .leading, spacing: 12) {
                         Text("modern_applications".localized)
                             .font(.headline)
                         
                         LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                             ForEach(chapter.modernApplications, id: \.self) { application in
                                 Text(application)
                                     .font(.caption)
                                     .padding(.horizontal, 12)
                                     .padding(.vertical, 6)
                                     .background(chapter.color.opacity(0.2))
                                     .cornerRadius(8)
                             }
                         }
                     }
                     
                     // Related scenarios
                     if !chapterScenarios.isEmpty {
                         VStack(alignment: .leading, spacing: 12) {
                             Text("\("related_scenarios".localized) (\(chapterScenarios.count))")
                                 .font(.headline)
                             
                             ForEach(Array(chapterScenarios.prefix(5))) { scenario in
                                 ScenarioRowView(scenario: scenario)
                             }
                             
                             // Show all scenarios button (simplified)
                             if chapterScenarios.count > 5 {
                                 Button(String(format: "view_all_scenarios".localized, chapterScenarios.count)) {
                                     // For now, dismiss this view - you can enhance this later
                                     dismiss()
                                 }
                                 .font(.subheadline)
                                 .foregroundColor(chapter.color)
                                 .padding(.top, 8)
                             }
                         }
                     }
                 }
                 .padding()
             }
             .navigationTitle(String(format: "chapter_number".localized, chapter.number))
             .navigationBarTitleDisplayMode(.inline)
             .toolbar {
                 ToolbarItem(placement: .navigationBarTrailing) {
                     Button("done".localized) {
                         dismiss()
                     }
                 }
             }
         }
     }
 }

 */

/*NISHANT v6.0 with GLASS ENHANCED LOOK
 
 2 strucures down below */


//
//  ChapterBrowserView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

struct ChapterBrowserView: View {
    @StateObject private var chapterManager = GitaChapterManager()
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var selectedChapter: GitaChapter?
    @State private var searchText = ""

    var filteredChapters: [GitaChapter] {
        if searchText.isEmpty {
            return chapterManager.chapters
        } else {
            return chapterManager.chapters.filter { chapter in
                chapter.title.localizedCaseInsensitiveContains(searchText) ||
                chapter.theme.localizedCaseInsensitiveContains(searchText) ||
                chapter.sanskritTitle.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // 🪞 Glass Header
                    VStack(spacing: 8) {
                        Text("chapters_wisdom_title".localized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("explore_complete_gita".localized)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    .padding()
                    
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white.opacity(0.2), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .padding(.horizontal)
                   
                    .padding(.top)

                    // 🔍 Search Bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.secondary)
                        TextField("search_chapters".localized, text: $searchText)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white.opacity(0.1), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    .padding(.horizontal)

                    // Chapters grid
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 16) {
                        ForEach(filteredChapters) { chapter in
                            ChapterCardView(chapter: chapter)
                                .onTapGesture {
                                    selectedChapter = chapter
                                }
                        }
                    }
                    .padding(.horizontal)

                    Spacer(minLength: 80)
                }
            }
            .background(
                LinearGradient(colors: [
                    Color("BGStart"), Color("BGEnd")
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            )
            .navigationBarHidden(true)
        }
        .sheet(item: $selectedChapter) { chapter in
            ChapterDetailView(chapter: chapter)
        }
    }
}

struct ChapterCardView: View {
    let chapter: GitaChapter
    @EnvironmentObject var scenariosManager: ScenariosManager

    var chapterScenarios: [LifeScenario] {
        scenariosManager.scenarios.filter { $0.chapter == chapter.number }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text(String(format: "chapter_number".localized, chapter.number))
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(chapter.title)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                }
                Spacer()
                Image(systemName: chapter.icon)
                    .font(.title2)
                    .foregroundColor(chapter.color)
            }

            Text(chapter.sanskritTitle)
                .font(.caption)
                .italic()
                .foregroundColor(.secondary)

            Text(chapter.theme)
                .font(.subheadline)
                .foregroundColor(chapter.color)
                .fontWeight(.medium)

            HStack {
                Image(systemName: "list.bullet")
                    .foregroundColor(.secondary)
                Text("\(chapterScenarios.count) \("scenarios".localized)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(chapter.verseCount) \("verses".localized)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white.opacity(0.15), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
    }
}


struct ChapterDetailView: View {
    let chapter: GitaChapter
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    @Environment(\.colorScheme) var colorScheme

    var chapterScenarios: [LifeScenario] {
        scenariosManager.scenarios.filter { $0.chapter == chapter.number }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text(String(format: "chapter_number".localized, chapter.number))
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Image(systemName: chapter.icon)
                                .font(.title)
                                .foregroundColor(chapter.color)
                        }

                        Text(chapter.title)
                            .font(.title)
                            .fontWeight(.bold)

                        Text(chapter.sanskritTitle)
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(.secondary)

                        Text(chapter.theme)
                            .font(.headline)
                            .foregroundColor(chapter.color)
                    }
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white.opacity(0.2), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("overview".localized)
                            .font(.headline)
                        Text(chapter.description)
                            .font(.body)
                    }

                    VStack(alignment: .leading, spacing: 12) {
                        Text("key_teachings".localized)
                            .font(.headline)

                        ForEach(Array(chapter.keyTeachings.enumerated()), id: \.offset) { index, teaching in
                            HStack(alignment: .top, spacing: 12) {
                                Text("\(index + 1)")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 20, height: 20)
                                    .background(chapter.color)
                                    .clipShape(Circle())

                                Text(teaching)
                                    .font(.body)
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 12) {
                        Text("modern_applications".localized)
                            .font(.headline)

                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                            ForEach(chapter.modernApplications, id: \.self) { application in
                                Text(application)
                                    .font(.caption)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 6)
                                    .background(chapter.color.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                    }

                    if !chapterScenarios.isEmpty {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("\("related_scenarios".localized) (\(chapterScenarios.count))")
                                .font(.headline)

                            ForEach(Array(chapterScenarios.prefix(5))) { scenario in
                                ScenarioRowView(scenario: scenario)
                            }

                            if chapterScenarios.count > 5 {
                                Button(String(format: "view_all_scenarios".localized, chapterScenarios.count)) {
                                    dismiss()
                                }
                                .font(.subheadline)
                                .foregroundColor(chapter.color)
                                .padding(.top, 8)
                            }
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(colors: [
                    Color("BGStart"), Color("BGEnd")
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            )
            .navigationTitle(String(format: "chapter_number".localized, chapter.number))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("done".localized) {
                        dismiss()
                    }
                }
            }
        }
    }
}

/* NISHANT VERSION 5.0 WORKING
 CHANGING IT TO GLASS VIEW
*/

 struct ScenarioRowView: View {
    let scenario: LifeScenario
    
    var body: some View {
        HStack {
            Image(systemName: scenario.category.icon)
                .foregroundColor(scenario.category.color)
                .frame(width: 24)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(scenario.title.localized)
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text(scenario.category.rawValue.localized)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 8)
        .contentShape(Rectangle())
    }
}

// Optional: Create the missing ChapterScenariosView for future use
struct ChapterScenariosView: View {
    let chapter: GitaChapter
    let scenarios: [LifeScenario]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            List(scenarios) { scenario in
                NavigationLink(destination: ScenarioDetailView(scenario: scenario)) {
                    ScenarioRowView(scenario: scenario)
                }
            }
            .navigationTitle("\(chapter.title) \("scenarios".localized)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("done".localized) {
                        dismiss()
                    }
                }
            }
        }
    }
}




/*   NISHANT - VERSION 6.0 with glass effect NOT working

struct ScenarioRowView: View {
    let scenario: LifeScenario

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(scenario.category.color.opacity(0.15))
                    .frame(width: 36, height: 36)
                Image(systemName: scenario.category.icon)
                    .foregroundColor(scenario.category.color)
                    .font(.system(size: 16, weight: .semibold))
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(scenario.title.localized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                Text(scenario.category.rawValue.localized)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.white.opacity(0.15), lineWidth: 0.8)
        )
        .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 2)
        .contentShape(Rectangle())
    }
}

struct ChapterScenariosView: View {
    let chapter: GitaChapter
    let scenarios: [LifeScenario]
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(scenarios) { scenario in
                        NavigationLink(destination: ScenarioDetailView(scenario: scenario)) {
                            ScenarioRowView(scenario: scenario)
                                .padding(.horizontal)
                        }
                    }
                }
                .padding(.top)
            }
            .background(
                LinearGradient(colors: [Color("BGStart"), Color("BGEnd")],
                               startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            )
            .navigationTitle("\(chapter.title) \("scenarios".localized)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("done".localized) {
                        dismiss()
                    }
                }
            }
        }
    }
}
*/

#Preview {
    ChapterBrowserView()
        .environmentObject(ScenariosManager())
}
