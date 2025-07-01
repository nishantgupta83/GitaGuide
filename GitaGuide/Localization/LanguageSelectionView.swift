// LanguageSelectionView.swift
import SwiftUI

struct LanguageSelectionView: View {
    @StateObject private var localizationManager = LocalizationManager.shared
    @Environment(\.dismiss) private var dismiss
    
    let languages = [
        ("en", "English", "🇺🇸"),
        ("hi", "हिन्दी", "🇮🇳")
      /*  ("sa", "संस्कृत", "🕉️"),
        ("es", "Español", "🇪🇸"),
        ("fr", "Français", "🇫🇷"),
        ("de", "Deutsch", "🇩🇪"),
        ("pt", "Português", "🇧🇷"),
        ("ru", "Русский", "🇷🇺"),
        ("zh", "中文", "🇨🇳"),
        ("ja", "日本語", "🇯🇵"),
        ("ta", "தமிழ்", "🇮🇳"),
        ("te", "తెలుగు", "🇮🇳"),
        ("bn", "বাংলা", "🇮🇳"),
        ("gu", "ગુજરાતી", "🇮🇳"),
        ("mr", "मराठी", "🇮🇳")*/
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(languages, id: \.0) { code, name, flag in
                    Button(action: {
                        localizationManager.setLanguage(code)
                        dismiss()
                    }) {
                        HStack {
                            Text(flag)
                                .font(.title2)
                            
                            VStack(alignment: .leading) {
                                Text(name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                if code == "en" {
                                    Text("Original Language")
                                        .font(.caption)
                                        .foregroundColor(.orange)
                                }
                            }
                            
                            Spacer()
                            
                            if localizationManager.currentLanguage == code {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.orange)
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("choose_language".localized)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("done".localized) { dismiss() }
                }
            }
        }
    }
}
