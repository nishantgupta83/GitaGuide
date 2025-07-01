//
//  UnifiedStatCard.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct UnifiedStatCard: View {
    let title: String
    let value: String
    let icon: String
    let color: Color
    let animated: Bool
    
    @State private var isAnimated = false
    
    init(title: String, value: String, icon: String, color: Color, animated: Bool = true) {
        self.title = title
        self.value = value
        self.icon = icon
        self.color = color
        self.animated = animated
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
                .scaleEffect(animated && isAnimated ? 1.1 : 1.0)
                .animation(
                    animated ? .easeInOut(duration: 1.5).repeatForever(autoreverses: true) : .none,
                    value: isAnimated
                )
            
            Text(value)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
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
            if animated {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0...1)) {
                    isAnimated = true
                }
            }
        }
    }
}

// Convenience extensions for different styles
extension UnifiedStatCard {
    // For simple stats without animation
    static func simple(title: String, value: String, icon: String, color: Color) -> UnifiedStatCard {
        UnifiedStatCard(title: title, value: value, icon: icon, color: color, animated: false)
    }
    
    // For animated stats
    static func animated(title: String, value: String, icon: String, color: Color) -> UnifiedStatCard {
        UnifiedStatCard(title: title, value: value, icon: icon, color: color, animated: true)
    }
}

#Preview {
    VStack(spacing: 20) {
        HStack(spacing: 16) {
            UnifiedStatCard.animated(
                title: "Scenarios",
                value: "25",
                icon: "list.bullet.rectangle",
                color: .orange
            )
            
            UnifiedStatCard.animated(
                title: "Verses",
                value: "72",
                icon: "quote.bubble",
                color: .blue
            )
            
            UnifiedStatCard.animated(
                title: "Teachings",
                value: "4",
                icon: "lightbulb",
                color: .green
            )
        }
        
        HStack(spacing: 16) {
            UnifiedStatCard.simple(
                title: "Entries",
                value: "12",
                icon: "doc.text.fill",
                color: .purple
            )
            
            UnifiedStatCard.simple(
                title: "Avg Rating",
                value: "4.5",
                icon: "star.fill",
                color: .yellow
            )
        }
    }
    .padding()
}
