
//
//  ThemeManager.swift
//  GitaGuide
//
//  Created by Nishant Gupta on 7/1/25.
//

import SwiftUI

// MARK: - AppTheme Struct

struct AppTheme {
    let gradient: LinearGradient
    let startColor: Color
    let endColor: Color
}

// MARK: - ThemeManager Class

class ThemeManager: ObservableObject {
    static let shared = ThemeManager()

    @Published var currentTheme: AppTheme = ThemeManager.randomTheme()

    static func randomTheme() -> AppTheme {
        let themes: [AppTheme] = [
            AppTheme(
                gradient: LinearGradient(colors: [Color.mint, Color.green], startPoint: .top, endPoint: .bottom),
                startColor: Color.mint,
                endColor: Color.green
            ),
            AppTheme(
                gradient: LinearGradient(colors: [Color.purple, Color.indigo], startPoint: .topLeading, endPoint: .bottomTrailing),
                startColor: Color.purple,
                endColor: Color.indigo
            ),
            AppTheme(
                gradient: LinearGradient(colors: [Color.orange, Color.yellow], startPoint: .leading, endPoint: .trailing),
                startColor: Color.orange,
                endColor: Color.yellow
            ),
            AppTheme(
                gradient: LinearGradient(colors: [Color.teal, Color.cyan], startPoint: .top, endPoint: .bottom),
                startColor: Color.teal,
                endColor: Color.cyan
            )
        ]
        return themes.randomElement()!
    }

    func changeTheme() {
        currentTheme = ThemeManager.randomTheme()
    }
}

// MARK: - Brightness Detection

extension Color {
    var isBright: Bool {
        UIColor(self).hsba.brightness > 0.7
    }
}

extension UIColor {
    var hsba: (hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return (h, s, b, a)
    }
}

/*
var gradientStartColor: Color {
//    let mirror = Mirror(reflecting: ThemeManager.changeTheme(<#T##self: ThemeManager##ThemeManager#>))
    for child in mirror.children {
        if child.label == "colors", let colors = child.value as? [Color], let first = colors.first {
            return first
        }
    }
    return .white
}
*/
