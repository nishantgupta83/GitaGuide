
//
//  ContentView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var localizationManager: LocalizationManager
    @EnvironmentObject var scenariosManager: ScenariosManager
    @State private var selectedTab = 0
    @State private var showingLanguageSelection = false
    @StateObject private var themeManager = ThemeManager.shared

    var body: some View {
        ZStack(alignment: .bottom) {
            // Subtle theme background (10% opacity)
        //    themeManager.currentTheme.gradient
         //       .opacity(0.1)
          //      .ignoresSafeArea()
         //   Color.black.opacity(0.2).ignoresSafeArea()

            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label("home".localized, systemImage: "house.fill")
                    }
                    .tag(0)
                
                EnhancedChapterBrowserView()
                    .tabItem {
                        Label("chapters".localized, systemImage: "book.closed.fill")
                    }
                    .tag(1)
                
                ScenarioLibraryView()
                    .tabItem {
                        Label("scenarios".localized, systemImage: "list.bullet.rectangle.fill")
                    }
                    .tag(2)
                
                JournalView()
                    .tabItem {
                        Label("journal".localized, systemImage: "book.fill")
                    }
                    .tag(3)
                
                AboutView()
                    .tabItem {
                        Label("about".localized, systemImage: "info.circle.fill")
                    }
                    .tag(4)
            }
          //  .accentColor($themeManager.gradientStartColor.isBright ? .black : .white)
         //   .accentColor(themeManager.currentTheme.startColor.isBright ? .black : .white)
        
        }
    }
}
/*

struct ContentView: View {
    @EnvironmentObject var localizationManager: LocalizationManager
    @EnvironmentObject var scenariosManager: ScenariosManager
    @State private var selectedTab = 0
    @State private var showingLanguageSelection = false
    @StateObject private var themeManager = ThemeManager.shared
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label("home".localized, systemImage: "house.fill")
                    }
                    .tag(0)
                
                EnhancedChapterBrowserView()
                    .tabItem {
                        Label("chapters".localized, systemImage: "book.closed.fill")
                    }
                    .tag(1)
                
                ScenarioLibraryView()
                    .tabItem {
                        Label("scenarios".localized, systemImage: "list.bullet.rectangle.fill")
                    }
                    .tag(2)
                
                JournalView()
                    .tabItem {
                        Label("journal".localized, systemImage: "book.fill")
                    }
                    .tag(3)
                
                AboutView()
                    .tabItem {
                        Label("about".localized, systemImage: "info.circle.fill")
                    }
                    .tag(4)
            }
         //NISHANT 5.0 replaced with colored theme    .accentColor(.orange)
       //     .accentColor(themeManager.currentTheme.gradientStartColor.isBright ? .black : .white)
            .accentColor(.orange)
        }
        .background(
            RoundedRectangle(cornerRadius: 0)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.35), radius: 10, y: -5)
             //   .Color.white.opacity(0.2)
                .ignoresSafeArea(edges: .bottom)
            
            // OR
          //  VisualEffectBlur(blurStyle: .systemMaterial)
           //     .clipShape(RoundedRectangle(cornerRadius: 30))
              //  .shadow(radius: 10)
            
            // OR
              //  .background(Color.white.opacity(0.2))
        )

    }}
  */

struct ScenarioLibraryView: View {
    @EnvironmentObject var scenariosManager: ScenariosManager
    @State private var searchText = ""
    @State private var selectedCategory: LifeCategory?

    var filteredScenarios: [LifeScenario] {
        scenariosManager.scenarios.filter { scenario in
            let matchesCategory = selectedCategory == nil || scenario.category == selectedCategory
            let matchesQuery = searchText.isEmpty ||
                scenario.title.localizedCaseInsensitiveContains(searchText) ||
                scenario.description.localizedCaseInsensitiveContains(searchText) ||
                scenario.tags.contains(where: { $0.localizedCaseInsensitiveContains(searchText) })

            return matchesCategory && matchesQuery
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                // Category Filter
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        Button("All") {
                            selectedCategory = nil
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(selectedCategory == nil ? Color.orange : Color.gray.opacity(0.2))
                        .foregroundColor(selectedCategory == nil ? .white : .primary)
                        .cornerRadius(20)

                        ForEach(LifeCategory.allCases, id: \.self) { category in
                            Button(category.localizedName) {
                                selectedCategory = category
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(selectedCategory == category ? category.color : Color.gray.opacity(0.2))
                            .foregroundColor(selectedCategory == category ? .white : .primary)
                            .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                }

                // Scenario List
                List(filteredScenarios) { scenario in
                    NavigationLink(destination: ScenarioDetailView(scenario: scenario)) {
                        ScenarioCardView(scenario: scenario)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                .searchable(text: $searchText, prompt: "Search dilemmas, wisdom...")

            }
            .navigationTitle("Scenarios")
        }
    }
}

struct AboutView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("more_title".localized)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                        .padding(.horizontal)

                    VStack(spacing: 16) {
                        AnimatedCard {
                            NavigationLink(destination: AboutDetailView()) {
                                IconCardView(
                                    title: "about_title".localized,
                                    subtitle: "about_description_short".localized,
                                    icon: "info.circle.fill",
                                    color: .blue
                                )
                            }
                        }

                  /*      AnimatedCard {
                            NavigationLink(destination: FutureEnhancementsView()) {
                                IconCardView(
                                    title: "future_enhancements".localized,
                                    subtitle: "upcoming_features_description".localized,
                                    icon: "sparkles",
                                    color: .purple
                                )
                            }
                        }

                        AnimatedCard {
                            VStack(alignment: .leading) {
                                IconCardView(
                                    title: "read_gita_english".localized,
                                    subtitle: "english_version".localized,
                                    icon: "book.fill",
                                    color: .orange
                                )
                                Link("Download PDF", destination: URL(string: "https://www.prabhupada-books.de/translations/gita-english/Bhagavad-gita-As-It-Is_McMillan1972.pdf")!)
                                    .font(.footnote)
                                    .foregroundColor(.blue)
                                    .padding(.leading)
                            }
                        }
*/
                        
                /*        AnimatedCard {
                            VStack(alignment: .leading) {
                                IconCardView(
                                    title: "read_gita_spanish".localized,
                                    subtitle: "spanish_version".localized,
                                    icon: "book.fill",
                                    color: .green
                                )
                                Link("Descargar PDF", destination: URL(string: "https://www.prabhupada-books.de/translations/gita-spanish/Bhagavad-gita_Tal_Como_Es_1978_condensed.pdf")!)
                                    .font(.footnote)
                                    .foregroundColor(.blue)
                                    .padding(.leading)
                            }
                        }
                        */
                        
                        AnimatedCard {
                            VStack(alignment: .leading) {
                                IconCardView(
                                    title: "privacy_policy".localized,
                                    subtitle: "your_data_respect".localized,
                                    icon: "lock.fill",
                                    color: .green
                                )
                            }
                        }
                        AnimatedCard {
                            VStack(alignment: .leading) {
                                IconCardView(
                                    title: "donate".localized,
                                    subtitle: "support_our_mission".localized,
                                    icon: "dollar.fill",
                                    color: .green
                                )
                                Link("Donation", destination: URL(string: "https://your-donation-link.com")!)
                                    .font(.footnote)
                                    .foregroundColor(.blue)
                                    .padding(.leading)
                            }
                        
                        }

                    }
                    .padding(.horizontal)

                    Spacer(minLength: 100)
                }
            }
            .navigationTitle("more".localized)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            Text("privacy_policy_content".localized)
                .padding()
        }
        .navigationTitle("privacy_policy".localized)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct IconCardView: View {
    var title: String
    var subtitle: String
    var icon: String
    var color: Color

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(color)
                .frame(width: 40, height: 40)
                .background(color.opacity(0.2))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 2)
    }
}

struct AnimatedCard<Content: View>: View {
    let content: () -> Content
    @State private var isVisible = false

    var body: some View {
        content()
            .opacity(isVisible ? 1 : 0)
            .offset(y: isVisible ? 0 : 20)
            .animation(.easeOut(duration: 0.6), value: isVisible)
            .onAppear {
                isVisible = true
            }
    }
}
struct CardView: View {
    var title: String
    var subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
            Text(subtitle)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

struct AboutDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("about_title".localized)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                Text("about_description".localized)
                    .font(.body)

                VStack(alignment: .leading, spacing: 12) {
                    Text("about_chapter1".localized)
                        .font(.headline)

                    Text("about_chapter1_description".localized)
                        .font(.body)
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("how_it_works".localized)
                        .font(.headline)

                    Text("how_it_works_description".localized)
                        .font(.body)
                }

                Text("gita_quote".localized)
                    .font(.caption)
                    .italic()
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(8)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("about".localized)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FutureEnhancementsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("future_enhancements".localized)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                Text("future_enhancements_detail".localized)
                    .font(.body)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("future_enhancements".localized)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
        .environmentObject(ScenariosManager())
        .environmentObject(LocalizationManager.shared)
}
