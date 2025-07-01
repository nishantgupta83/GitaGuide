//
//  EnhancedChapterBrowserView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

//
//  EnhancedChapterBrowserView.swift - Updated
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct EnhancedChapterBrowserView: View {
    @StateObject private var chapterManager = GitaChapterManager()
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var selectedChapter: GitaChapter?
    @State private var searchText = ""
    @State private var scrollOffset: CGFloat = 0
    @State private var showingStats = false
    
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
    
    var headerOpacity: Double {
        let maxOffset: CGFloat = 100
        return max(0, 1 - (scrollOffset / maxOffset))
    }
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.orange.opacity(0.05),
                    Color.blue.opacity(0.05),
                    Color.purple.opacity(0.05)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollViewReader { proxy in
                ScrollView {
                    VStack(spacing: 0) {
                        // Parallax Header
                        ParallaxHeaderView(scrollOffset: scrollOffset)
                            .opacity(headerOpacity)
                        
                        // Stats Overview
                        ChapterStatsView()
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                        
                        // Search bar with animation
                        SearchBarView(searchText: $searchText)
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                        
                        // Chapters content
                        LazyVStack(spacing: 16) {
                            ForEach(Array(filteredChapters.enumerated()), id: \.element.id) { index, chapter in
                                AnimatedChapterCard(
                                    chapter: chapter,
                                    index: index,
                                    onTap: { selectedChapter = chapter }
                                )
                                .id("chapter_\(chapter.number)")
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 100)
                    }
                    .background(
                        GeometryReader { geometry in
                            Color.clear.preference(
                                key: ScrollOffsetPreferenceKey.self,
                                value: geometry.frame(in: .named("scroll")).minY
                            )
                        }
                    )
                }
                .coordinateSpace(name: "scroll")
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    withAnimation(.easeOut(duration: 0.1)) {
                        scrollOffset = value
                    }
                }
            }
            
            // Floating action button
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    FloatingActionButton {
                        withAnimation(.spring()) {
                            showingStats.toggle()
                        }
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
        .sheet(item: $selectedChapter) { chapter in
            EnhancedChapterDetailView(chapter: chapter)
        }
        .sheet(isPresented: $showingStats) {
            ChapterStatsDetailView()
        }
    }
}

// UPDATED: Use UnifiedStatCard
struct StatsPill: View {
    let title: String
    let value: String
    let icon: String
    let color: Color
    
    var body: some View {
        UnifiedStatCard.animated(
            title: title,
            value: value,
            icon: icon,
            color: color
        )
    }
}

struct ChapterStatsView: View {
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    var totalChapters: Int { 18 }
    var totalScenarios: Int { scenariosManager.totalScenariosCount }
    var avgScenariosPerChapter: Double { Double(totalScenarios) / Double(totalChapters) }
    
    var body: some View {
        HStack(spacing: 20) {
            StatsPill(
                title: "Chapters",
                value: "\(totalChapters)",
                icon: "book.closed.fill",
                color: .orange
            )
            
            StatsPill(
                title: "Scenarios",
                value: "\(totalScenarios)",
                icon: "list.bullet.rectangle.fill",
                color: .blue
            )
            
            StatsPill(
                title: "Avg/Chapter",
                value: String(format: "%.1f", avgScenariosPerChapter),
                icon: "chart.bar.fill",
                color: .green
            )
        }
    }
}

// UPDATED: Use UnifiedStatCard
struct ChapterQuickStatsView: View {
    let chapter: GitaChapter
    let scenarioCount: Int
    
    var body: some View {
        HStack(spacing: 20) {
            UnifiedStatCard.animated(
                title: "Scenarios",
                value: "\(scenarioCount)",
                icon: "list.bullet.rectangle",
                color: chapter.color
            )
            
            UnifiedStatCard.animated(
                title: "Verses",
                value: "\(chapter.verseCount)",
                icon: "quote.bubble",
                color: .blue
            )
            
            UnifiedStatCard.animated(
                title: "Teachings",
                value: "\(chapter.keyTeachings.count)",
                icon: "lightbulb",
                color: .orange
            )
        }
    }
}

// REMOVE the old StatCard definition - it's now replaced by UnifiedStatCard

// Keep all other existing structs (ParallaxHeaderView, SearchBarView, etc.) unchanged...

struct ParallaxHeaderView: View {
    let scrollOffset: CGFloat
    
    var body: some View {
        ZStack {
            // Background with parallax effect
            RoundedRectangle(cornerRadius: 0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.3),
                            Color.yellow.opacity(0.2),
                            Color.blue.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 200)
                .offset(y: scrollOffset * 0.5)
            
            // Content
            VStack(spacing: 12) {
                Text("🕉️")
                    .font(.system(size: 60))
                    .scaleEffect(1 + (scrollOffset * 0.001))
                
                Text("18 Chapters of Wisdom")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("Complete Bhagavad Gita Guide")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .offset(y: scrollOffset * 0.3)
        }
        .frame(height: 200)
        .clipped()
    }
}



struct SearchBarView: View {
    @Binding var searchText: String
    @State private var isSearchFocused = false
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
                .scaleEffect(isSearchFocused ? 1.1 : 1.0)
                .animation(.spring(response: 0.3), value: isSearchFocused)
            
            TextField("Search chapters, themes, or Sanskrit names...", text: $searchText)
                .onTapGesture {
                    withAnimation(.spring()) {
                        isSearchFocused = true
                    }
                }
                .onSubmit {
                    withAnimation(.spring()) {
                        isSearchFocused = false
                    }
                }
            
            if !searchText.isEmpty {
                Button(action: {
                    withAnimation(.spring()) {
                        searchText = ""
                        isSearchFocused = false
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(
                    color: isSearchFocused ? .orange.opacity(0.3) : .black.opacity(0.1),
                    radius: isSearchFocused ? 8 : 2,
                    x: 0,
                    y: 2
                )
        )
        .scaleEffect(isSearchFocused ? 1.02 : 1.0)
        .animation(.spring(response: 0.3), value: isSearchFocused)
    }
}

struct AnimatedChapterCard: View {
    let chapter: GitaChapter
    let index: Int
    let onTap: () -> Void
    @EnvironmentObject var scenariosManager: ScenariosManager
    @State private var isVisible = false
    @State private var isPressed = false
    
    var chapterScenarios: [LifeScenario] {
        scenariosManager.getScenariosForChapter(chapter.number)
    }
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.3)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.spring(response: 0.3)) {
                    isPressed = false
                }
                onTap()
            }
        }) {
            HStack(spacing: 16) {
                // Chapter number with gradient
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [chapter.color, chapter.color.opacity(0.6)]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 60, height: 60)
                    
                    Text("\(chapter.number)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                // Chapter content
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(chapter.title)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                            .lineLimit(2)
                        
                        Spacer()
                        
                        Image(systemName: chapter.icon)
                            .font(.title3)
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
                        Label("\(chapterScenarios.count) scenarios", systemImage: "list.bullet")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Label("\(chapter.verseCount) verses", systemImage: "quote.bubble")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(.systemBackground))
                    .shadow(
                        color: .black.opacity(0.1),
                        radius: isPressed ? 2 : 8,
                        x: 0,
                        y: isPressed ? 1 : 4
                    )
            )
            .scaleEffect(isPressed ? 0.98 : (isVisible ? 1.0 : 0.8))
            .opacity(isVisible ? 1.0 : 0.0)
            .offset(x: isVisible ? 0 : 50)
        }
        .buttonStyle(PlainButtonStyle())
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8).delay(Double(index) * 0.1)) {
                isVisible = true
            }
        }
    }
}

struct FloatingActionButton: View {
    let action: () -> Void
    @State private var isRotating = false
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chart.bar.xaxis")
                .font(.title3)
                .foregroundColor(.white)
                .frame(width: 56, height: 56)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.orange, .red]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                )
                .shadow(color: .orange.opacity(0.4), radius: 8, x: 0, y: 4)
                .rotationEffect(.degrees(isRotating ? 360 : 0))
                .animation(.linear(duration: 10).repeatForever(autoreverses: false), value: isRotating)
        }
        .onAppear {
            isRotating = true
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct ChapterStatsDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    
    var chapterStats: [Int: Int] {
        scenariosManager.getChapterStats()
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("📊 Chapter Statistics")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 12) {
                        ForEach(1...18, id: \.self) { chapterNumber in
                            VStack {
                                Text("Ch. \(chapterNumber)")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                Text("\(chapterStats[chapterNumber] ?? 0)")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("scenarios")
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Statistics")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }
}

struct EnhancedChapterDetailView: View {
    let chapter: GitaChapter
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var scenariosManager: ScenariosManager
    @State private var scrollOffset: CGFloat = 0
    @State private var showingAllScenarios = false
    
    var chapterScenarios: [LifeScenario] {
        scenariosManager.getScenariosForChapter(chapter.number)
    }
    
    var headerOpacity: Double {
        let maxOffset: CGFloat = 150
        return max(0, 1 - (scrollOffset / maxOffset))
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background gradient
                LinearGradient(
                    gradient: Gradient(colors: [
                        chapter.color.opacity(0.1),
                        chapter.color.opacity(0.05),
                        Color(.systemBackground)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        // Hero Header with Parallax
                        ChapterHeroHeader(chapter: chapter, scrollOffset: scrollOffset)
                            .opacity(headerOpacity)
                        
                        // Content sections
                        VStack(spacing: 24) {
                            // Quick Stats
                            ChapterQuickStatsView(chapter: chapter, scenarioCount: chapterScenarios.count)
                            
                            // Description
                            ChapterDescriptionView(chapter: chapter)
                            
                            // Key Teachings
                            ChapterTeachingsView(chapter: chapter)
                            
                            // Modern Applications
                            ChapterApplicationsView(chapter: chapter)
                            
                            // Related Scenarios
                            ChapterScenariosSection(
                                scenarios: chapterScenarios,
                                chapter: chapter,
                                showingAll: $showingAllScenarios
                            )
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 100)
                    }
                    .background(
                        GeometryReader { geometry in
                            Color.clear.preference(
                                key: ScrollOffsetPreferenceKey.self,
                                value: geometry.frame(in: .named("scroll")).minY
                            )
                        }
                    )
                }
                .coordinateSpace(name: "scroll")
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    withAnimation(.easeOut(duration: 0.1)) {
                        scrollOffset = value
                    }
                }
            }
            .navigationBarHidden(true)
            .overlay(
                // Custom navigation bar
                VStack {
                    HStack {
                        Button(action: { dismiss() }) {
                            Image(systemName: "chevron.left")
                                .font(.title3)
                                .foregroundColor(.primary)
                                .frame(width: 32, height: 32)
                                .background(Color(.systemBackground).opacity(0.8))
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Text("Chapter \(chapter.number)")
                            .font(.headline)
                            .opacity(scrollOffset < -100 ? 1 : 0)
                        
                        Spacer()
                        
                        Button(action: { /* Share functionality */ }) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.title3)
                                .foregroundColor(.primary)
                                .frame(width: 32, height: 32)
                                .background(Color(.systemBackground).opacity(0.8))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                    Spacer()
                }
            )
        }
        .sheet(isPresented: $showingAllScenarios) {
            ChapterAllScenariosView(chapter: chapter, scenarios: chapterScenarios)
        }
    }
}

struct ChapterHeroHeader: View {
    let chapter: GitaChapter
    let scrollOffset: CGFloat
    
    var body: some View {
        ZStack {
            // Background with parallax
            RoundedRectangle(cornerRadius: 0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            chapter.color.opacity(0.6),
                            chapter.color.opacity(0.3),
                            chapter.color.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 280)
                .offset(y: scrollOffset * 0.5)
            
            // Content
            VStack(spacing: 16) {
                // Chapter number
                ZStack {
                    Circle()
                        .fill(chapter.color)
                        .frame(width: 80, height: 80)
                        .shadow(color: chapter.color.opacity(0.4), radius: 8, x: 0, y: 4)
                    
                    Text("\(chapter.number)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .scaleEffect(1 + (scrollOffset * 0.001))
                
                VStack(spacing: 8) {
                    Text(chapter.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                    
                    Text(chapter.sanskritTitle)
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Image(systemName: chapter.icon)
                        Text(chapter.theme)
                            .fontWeight(.medium)
                    }
                    .font(.headline)
                    .foregroundColor(chapter.color)
                }
            }
            .offset(y: scrollOffset * 0.3)
            .padding(.top, 50)
        }
        .frame(height: 280)
        .clipped()
    }
}

struct StatCard: View {
    let icon: String
    let value: String
    let label: String
    let color: Color
    @State private var isAnimated = false
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
                .scaleEffect(isAnimated ? 1.1 : 1.0)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: isAnimated)
            
            Text(value)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(color.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(color.opacity(0.2), lineWidth: 1)
                )
        )
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0...1)) {
                isAnimated = true
            }
        }
    }
}

struct ChapterDescriptionView: View {
    let chapter: GitaChapter
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Overview")
                .font(.headline)
                .foregroundColor(.primary)
            
            Text(chapter.description)
                .font(.body)
                .lineLimit(isExpanded ? nil : 3)
                .animation(.easeInOut, value: isExpanded)
            
            if !isExpanded {
                Button("Read more") {
                    withAnimation(.spring()) {
                        isExpanded = true
                    }
                }
                .font(.subheadline)
                .foregroundColor(chapter.color)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        )
    }
}
struct ChapterTeachingsView: View {
    let chapter: GitaChapter
    @State private var animatedTeachings: Set<Int> = []
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Key Teachings")
                .font(.headline)
                .foregroundColor(.primary)
            
            teachingsList
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(backgroundView)
    }
    
    private var teachingsList: some View {
        VStack(spacing: 12) {
            ForEach(chapter.keyTeachings.indices, id: \.self) { index in
                teachingRow(for: index)
            }
        }
    }
    
    private func teachingRow(for index: Int) -> some View {
        TeachingRow(
            teaching: chapter.keyTeachings[index],
            index: index,
            color: chapter.color,
            isAnimated: animatedTeachings.contains(index)
        )
        .onAppear {
            animateTeaching(at: index)
        }
    }
    
    // FIXED: Separate the insert operation from the animation
    private func animateTeaching(at index: Int) {
        let delay = Double(index) * 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            // Insert first, then animate
            animatedTeachings.insert(index)
            
            // Use withAnimation for UI updates only
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                // Trigger view update by modifying a dummy state if needed
                // The animation will be triggered by the state change above
            }
        }
    }
    
    private var backgroundView: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color(.systemBackground))
            .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

struct TeachingRow: View {
    let teaching: String
    let index: Int
    let color: Color
    let isAnimated: Bool
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            ZStack {
                Circle()
                    .fill(color)
                    .frame(width: 32, height: 32)
                
                Text("\(index + 1)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .scaleEffect(isAnimated ? 1.0 : 0.1)
            .opacity(isAnimated ? 1.0 : 0.0)
            .animation(.spring(response: 0.6, dampingFraction: 0.8), value: isAnimated)
            
            Text(teaching)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: isAnimated ? 0 : 30)
                .opacity(isAnimated ? 1.0 : 0.0)
                .animation(.spring(response: 0.6, dampingFraction: 0.8), value: isAnimated)
        }
    }
}
    
struct ChapterApplicationsView: View {
    let chapter: GitaChapter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Modern Applications")
                .font(.headline)
                .foregroundColor(.primary)
            
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 12) {
                ForEach(Array(chapter.modernApplications.enumerated()), id: \.offset) { index, application in
                    ApplicationCard(
                        application: application,
                        color: chapter.color,
                        index: index
                    )
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        )
    }
}

struct ApplicationCard: View {
    let application: String
    let color: Color
    let index: Int
    @State private var isVisible = false
    
    var body: some View {
        Text(application)
            .font(.subheadline)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(color.opacity(0.15))
            .cornerRadius(12)
            .scaleEffect(isVisible ? 1.0 : 0.8)
            .opacity(isVisible ? 1.0 : 0.0)
            .onAppear {
                withAnimation(.spring(response: 0.6).delay(Double(index) * 0.1)) {
                    isVisible = true
                }
            }
    }
}

struct ChapterScenariosSection: View {
    let scenarios: [LifeScenario]
    let chapter: GitaChapter
    @Binding var showingAll: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Related Scenarios")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Text("\(scenarios.count) total")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            if scenarios.isEmpty {
                EmptyStateView(message: "No scenarios available for this chapter yet.")
            } else {
                LazyVStack(spacing: 12) {
                    ForEach(Array(scenarios.prefix(3))) { scenario in
                        EnhancedScenarioRow(scenario: scenario)
                    }
                }
                
                if scenarios.count > 3 {
                    Button("View All \(scenarios.count) Scenarios") {
                        showingAll = true
                    }
                    .font(.subheadline)
                    .foregroundColor(chapter.color)
                    .padding(.top, 8)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        )
    }
}

struct EnhancedScenarioRow: View {
    let scenario: LifeScenario
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            // Handle scenario tap
        }) {
            HStack(spacing: 12) {
                Image(systemName: scenario.category.icon)
                    .foregroundColor(scenario.category.color)
                    .font(.title3)
                    .frame(width: 32, height: 32)
                    .background(scenario.category.color.opacity(0.1))
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(scenario.title)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    
                    Text(scenario.category.rawValue)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .scaleEffect(isPressed ? 0.98 : 1.0)
        }
        .buttonStyle(PlainButtonStyle())
        .onTapGesture {
            withAnimation(.spring(response: 0.3)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.spring(response: 0.3)) {
                    isPressed = false
                }
            }
        }
    }
}

struct EmptyStateView: View {
    let message: String
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "doc.text")
                .font(.system(size: 40))
                .foregroundColor(.secondary)
            
            Text(message)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 32)
    }
}

struct ChapterAllScenariosView: View {
    let chapter: GitaChapter
    let scenarios: [LifeScenario]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            List(scenarios) { scenario in
                NavigationLink(destination: ScenarioDetailView(scenario: scenario)) {
                    EnhancedScenarioRow(scenario: scenario)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("\(chapter.title)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }
}

#Preview {
    EnhancedChapterBrowserView()
        .environmentObject(ScenariosManager())
}
