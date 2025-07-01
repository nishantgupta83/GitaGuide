//
//  LocalizationManager.swift
//  GitaGuide
//
//  Created by Developer on 6/25/2025.
//

import Foundation
import SwiftUI

class LocalizationManager: ObservableObject {
    @Published var currentLanguage: String = "en"
    
    static let shared = LocalizationManager()
    
    private init() {
        // Load saved language or use device language
        if let savedLanguage = UserDefaults.standard.string(forKey: "app_language") {
           // currentLanguage = savedLanguage
            currentLanguage = "en"
        } else {
            // Use device language if supported, otherwise default to English
            let deviceLanguage = Locale.current.language.languageCode?.identifier ?? "en"
            currentLanguage = ["en", "hi", "es"].contains(deviceLanguage) ? deviceLanguage : "en"
        }
    }
    
    private func refreshLocalizedContent() {
        // Reload if localized strings change how data is displayed
        // If you store only keys (not full localized text), you can skip this
        objectWillChange.send()
    }
        
    func setLanguage(_ code: String) {
        currentLanguage = code
        UserDefaults.standard.set([code], forKey: "AppleLanguages")
        UserDefaults.standard.synchronize()

        NotificationCenter.default.post(name: .languageDidChange, object: nil)
    }

    func localizedString(_ key: String) -> String {
        guard let path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj"),
              let bundle = Bundle(path: path) else {
            return NSLocalizedString(key, comment: "")
        }
        
        return NSLocalizedString(key, bundle: bundle, comment: "")
    }
    
}

// String extension for easy localization
extension String {
    var localized: String {
        return LocalizationManager.shared.localizedString(self)
    }
}
