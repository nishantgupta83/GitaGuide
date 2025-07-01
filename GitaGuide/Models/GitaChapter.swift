//
//  GitaChapterSystem.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct GitaChapter: Identifiable {
    let id: Int
    let number: Int
    let titleKey: String
    let sanskritTitle: String
    let themeKey: String
    let keyTeachingKeys: [String]
    let modernApplicationKeys: [String]
    let descriptionKey: String
    let color: Color
    let icon: String
    let verseCount: Int
    
    // Computed properties for localized strings
    var title: String {
        return titleKey.localized
    }
    
    var theme: String {
        return themeKey.localized
    }
    
    var keyTeachings: [String] {
        return keyTeachingKeys.map { $0.localized }
    }
    
    var modernApplications: [String] {
        return modernApplicationKeys.map { $0.localized }
    }
    
    var description: String {
        return descriptionKey.localized
    }
    
    // Custom color coding isn't directly Codable, so we'll handle it differently
    init(id: Int, number: Int, titleKey: String, sanskritTitle: String, themeKey: String,
         keyTeachingKeys: [String], modernApplicationKeys: [String], descriptionKey: String,
         colorName: String, icon: String, verseCount: Int) {
        self.id = id
        self.number = number
        self.titleKey = titleKey
        self.sanskritTitle = sanskritTitle
        self.themeKey = themeKey
        self.keyTeachingKeys = keyTeachingKeys
        self.modernApplicationKeys = modernApplicationKeys
        self.descriptionKey = descriptionKey
        self.icon = icon
        self.verseCount = verseCount
        
        // Map color names to actual colors
        switch colorName {
        case "orange": self.color = .orange
        case "blue": self.color = .blue
        case "green": self.color = .green
        case "purple": self.color = .purple
        case "red": self.color = .red
        case "yellow": self.color = .yellow
        case "pink": self.color = .pink
        case "cyan": self.color = .cyan
        case "mint": self.color = .mint
        case "teal": self.color = .teal
        case "indigo": self.color = .indigo
        case "brown": self.color = .brown
        default: self.color = .orange
        }
    }
}

class GitaChapterManager: ObservableObject {
    @Published var chapters: [GitaChapter] = []
    
    init() {
        loadChapters()
    }
    
    private func loadChapters() {
        chapters = GitaChapterData.allChapters
    }
    
    func getChapter(number: Int) -> GitaChapter? {
        return chapters.first { $0.number == number }
    }
    
    func getChaptersByTheme(_ theme: String) -> [GitaChapter] {
        return chapters.filter { $0.theme.localizedCaseInsensitiveContains(theme) }
    }
}

struct GitaChapterData {
    static let allChapters: [GitaChapter] = [
        GitaChapter(
            id: 1, number: 1,
            titleKey: "ch1_title",
            sanskritTitle: "Arjuna Vishada Yoga",
            themeKey: "ch1_theme",
            keyTeachingKeys: [
                "ch1_teaching1",
                "ch1_teaching2",
                "ch1_teaching3",
                "ch1_teaching4",
                "ch1_teaching5"
            ],
            modernApplicationKeys: [
                "ch1_app1",
                "ch1_app2",
                "ch1_app3",
                "ch1_app4",
                "ch1_app5"
            ],
            descriptionKey: "ch1_description",
            colorName: "orange",
            icon: "questionmark.diamond.fill",
            verseCount: 47
        ),
        
        GitaChapter(
            id: 2, number: 2,
            titleKey: "ch2_title",
            sanskritTitle: "Sankhya Yoga",
            themeKey: "ch2_theme",
            keyTeachingKeys: [
                "ch2_teaching1",
                "ch2_teaching2",
                "ch2_teaching3",
                "ch2_teaching4"
            ],
            modernApplicationKeys: [
                "ch2_app1",
                "ch2_app2",
                "ch2_app3",
                "ch2_app4"
            ],
            descriptionKey: "ch2_description",
            colorName: "blue",
            icon: "brain.head.profile",
            verseCount: 72
        ),
        
        GitaChapter(
            id: 3, number: 3,
            titleKey: "ch3_title",
            sanskritTitle: "Karma Yoga",
            themeKey: "ch3_theme",
            keyTeachingKeys: [
                "ch3_teaching1",
                "ch3_teaching2",
                "ch3_teaching3",
                "ch3_teaching4"
            ],
            modernApplicationKeys: [
                "ch3_app1",
                "ch3_app2",
                "ch3_app3",
                "ch3_app4"
            ],
            descriptionKey: "ch3_description",
            colorName: "green",
            icon: "hands.sparkles.fill",
            verseCount: 43
        ),
        
        GitaChapter(
            id: 4, number: 4,
            titleKey: "ch4_title",
            sanskritTitle: "Jnana Karma Sanyasa Yoga",
            themeKey: "ch4_theme",
            keyTeachingKeys: [
                "ch4_teaching1",
                "ch4_teaching2",
                "ch4_teaching3",
                "ch4_teaching4"
            ],
            modernApplicationKeys: [
                "ch4_app1",
                "ch4_app2",
                "ch4_app3",
                "ch4_app4"
            ],
            descriptionKey: "ch4_description",
            colorName: "purple",
            icon: "graduationcap.fill",
            verseCount: 42
        ),
        
        GitaChapter(
            id: 5, number: 5,
            titleKey: "ch5_title",
            sanskritTitle: "Karma Sanyasa Yoga",
            themeKey: "ch5_theme",
            keyTeachingKeys: [
                "ch5_teaching1",
                "ch5_teaching2",
                "ch5_teaching3",
                "ch5_teaching4"
            ],
            modernApplicationKeys: [
                "ch5_app1",
                "ch5_app2",
                "ch5_app3",
                "ch5_app4"
            ],
            descriptionKey: "ch5_description",
            colorName: "yellow",
            icon: "leaf.fill",
            verseCount: 29
        ),
        
        GitaChapter(
            id: 6, number: 6,
            titleKey: "ch6_title",
            sanskritTitle: "Dhyana Yoga",
            themeKey: "ch6_theme",
            keyTeachingKeys: [
                "ch6_teaching1",
                "ch6_teaching2",
                "ch6_teaching3",
                "ch6_teaching4"
            ],
            modernApplicationKeys: [
                "ch6_app1",
                "ch6_app2",
                "ch6_app3",
                "ch6_app4"
            ],
            descriptionKey: "ch6_description",
            colorName: "indigo",
            icon: "brain.fill",
            verseCount: 47
        ),
        
        GitaChapter(
            id: 7, number: 7,
            titleKey: "ch7_title",
            sanskritTitle: "Jnana Vijnana Yoga",
            themeKey: "ch7_theme",
            keyTeachingKeys: [
                "ch7_teaching1",
                "ch7_teaching2",
                "ch7_teaching3",
                "ch7_teaching4"
            ],
            modernApplicationKeys: [
                "ch7_app1",
                "ch7_app2",
                "ch7_app3",
                "ch7_app4"
            ],
            descriptionKey: "ch7_description",
            colorName: "pink",
            icon: "sparkles",
            verseCount: 30
        ),
        
        GitaChapter(
            id: 8, number: 8,
            titleKey: "ch8_title",
            sanskritTitle: "Aksara Brahma Yoga",
            themeKey: "ch8_theme",
            keyTeachingKeys: [
                "ch8_teaching1",
                "ch8_teaching2",
                "ch8_teaching3",
                "ch8_teaching4"
            ],
            modernApplicationKeys: [
                "ch8_app1",
                "ch8_app2",
                "ch8_app3",
                "ch8_app4"
            ],
            descriptionKey: "ch8_description",
            colorName: "cyan",
            icon: "infinity",
            verseCount: 28
        ),
        
        GitaChapter(
            id: 9, number: 9,
            titleKey: "ch9_title",
            sanskritTitle: "Raja Vidya Yoga",
            themeKey: "ch9_theme",
            keyTeachingKeys: [
                "ch9_teaching1",
                "ch9_teaching2",
                "ch9_teaching3",
                "ch9_teaching4"
            ],
            modernApplicationKeys: [
                "ch9_app1",
                "ch9_app2",
                "ch9_app3",
                "ch9_app4"
            ],
            descriptionKey: "ch9_description",
            colorName: "red",
            icon: "heart.fill",
            verseCount: 34
        ),
        
        GitaChapter(
            id: 10, number: 10,
            titleKey: "ch10_title",
            sanskritTitle: "Vibhuti Yoga",
            themeKey: "ch10_theme",
            keyTeachingKeys: [
                "ch10_teaching1",
                "ch10_teaching2",
                "ch10_teaching3",
                "ch10_teaching4"
            ],
            modernApplicationKeys: [
                "ch10_app1",
                "ch10_app2",
                "ch10_app3",
                "ch10_app4"
            ],
            descriptionKey: "ch10_description",
            colorName: "mint",
            icon: "star.fill",
            verseCount: 42
        ),
        
        GitaChapter(
            id: 11, number: 11,
            titleKey: "ch11_title",
            sanskritTitle: "Vishwarupa Darshana Yoga",
            themeKey: "ch11_theme",
            keyTeachingKeys: [
                "ch11_teaching1",
                "ch11_teaching2",
                "ch11_teaching3",
                "ch11_teaching4"
            ],
            modernApplicationKeys: [
                "ch11_app1",
                "ch11_app2",
                "ch11_app3",
                "ch11_app4"
            ],
            descriptionKey: "ch11_description",
            colorName: "teal",
            icon: "globe.asia.australia.fill",
            verseCount: 55
        ),
        
        GitaChapter(
            id: 12, number: 12,
            titleKey: "ch12_title",
            sanskritTitle: "Bhakti Yoga",
            themeKey: "ch12_theme",
            keyTeachingKeys: [
                "ch12_teaching1",
                "ch12_teaching2",
                "ch12_teaching3",
                "ch12_teaching4"
            ],
            modernApplicationKeys: [
                "ch12_app1",
                "ch12_app2",
                "ch12_app3",
                "ch12_app4"
            ],
            descriptionKey: "ch12_description",
            colorName: "pink",
            icon: "hands.and.sparkles.fill",
            verseCount: 20
        ),
        
        GitaChapter(
            id: 13, number: 13,
            titleKey: "ch13_title",
            sanskritTitle: "Ksetra Ksetrajna Vibhaga Yoga",
            themeKey: "ch13_theme",
            keyTeachingKeys: [
                "ch13_teaching1",
                "ch13_teaching2",
                "ch13_teaching3",
                "ch13_teaching4"
            ],
            modernApplicationKeys: [
                "ch13_app1",
                "ch13_app2",
                "ch13_app3",
                "ch13_app4"
            ],
            descriptionKey: "ch13_description",
            colorName: "brown",
            icon: "person.crop.circle.fill",
            verseCount: 35
        ),
        
        GitaChapter(
            id: 14, number: 14,
            titleKey: "ch14_title",
            sanskritTitle: "Gunatraya Vibhaga Yoga",
            themeKey: "ch14_theme",
            keyTeachingKeys: [
                "ch14_teaching1",
                "ch14_teaching2",
                "ch14_teaching3",
                "ch14_teaching4"
            ],
            modernApplicationKeys: [
                "ch14_app1",
                "ch14_app2",
                "ch14_app3",
                "ch14_app4"
            ],
            descriptionKey: "ch14_description",
            colorName: "purple",
            icon: "triangle.fill",
            verseCount: 27
        ),
        
        GitaChapter(
            id: 15, number: 15,
            titleKey: "ch15_title",
            sanskritTitle: "Purushottama Yoga",
            themeKey: "ch15_theme",
            keyTeachingKeys: [
                "ch15_teaching1",
                "ch15_teaching2",
                "ch15_teaching3",
                "ch15_teaching4"
            ],
            modernApplicationKeys: [
                "ch15_app1",
                "ch15_app2",
                "ch15_app3",
                "ch15_app4"
            ],
            descriptionKey: "ch15_description",
            colorName: "yellow",
            icon: "crown.fill",
            verseCount: 20
        ),
        
        GitaChapter(
            id: 16, number: 16,
            titleKey: "ch16_title",
            sanskritTitle: "Daivasura Sampad Vibhaga Yoga",
            themeKey: "ch16_theme",
            keyTeachingKeys: [
                "ch16_teaching1",
                "ch16_teaching2",
                "ch16_teaching3",
                "ch16_teaching4"
            ],
            modernApplicationKeys: [
                "ch16_app1",
                "ch16_app2",
                "ch16_app3",
                "ch16_app4"
            ],
            descriptionKey: "ch16_description",
            colorName: "red",
            icon: "scale.3d",
            verseCount: 24
        ),
        
        GitaChapter(
            id: 17, number: 17,
            titleKey: "ch17_title",
            sanskritTitle: "Shraddhatraya Vibhaga Yoga",
            themeKey: "ch17_theme",
            keyTeachingKeys: [
                "ch17_teaching1",
                "ch17_teaching2",
                "ch17_teaching3",
                "ch17_teaching4"
            ],
            modernApplicationKeys: [
                "ch17_app1",
                "ch17_app2",
                "ch17_app3",
                "ch17_app4"
            ],
            descriptionKey: "ch17_description",
            colorName: "green",
            icon: "leaf.arrow.circlepath",
            verseCount: 28
        ),
        
        GitaChapter(
            id: 18, number: 18,
            titleKey: "ch18_title",
            sanskritTitle: "Moksha Sanyasa Yoga",
            themeKey: "ch18_theme",
            keyTeachingKeys: [
                "ch18_teaching1",
                "ch18_teaching2",
                "ch18_teaching3",
                "ch18_teaching4"
            ],
            modernApplicationKeys: [
                "ch18_app1",
                "ch18_app2",
                "ch18_app3",
                "ch18_app4"
            ],
            descriptionKey: "ch18_description",
            colorName: "indigo",
            icon: "mountain.2.fill",
            verseCount: 78
        )
    ]
}

#Preview {
    VStack {
        Text("Localized Gita Chapters")
            .font(.title)
            .fontWeight(.bold)
        
        ForEach(GitaChapterData.allChapters.prefix(3)) { chapter in
            VStack(alignment: .leading) {
                Text(chapter.title)
                    .font(.headline)
                Text(chapter.theme)
                    .font(.subheadline)
                    .foregroundColor(chapter.color)
            }
            .padding()
        }
    }
}
