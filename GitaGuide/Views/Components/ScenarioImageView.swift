//
//  ScenarioImageView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI
/*
struct ScenarioImageView: View {
    let scenario: LifeScenario
    @State private var imageGlow = false
    
    var imageName: String {
        // You can add different images for different scenarios
        switch scenario.category {
        case .work:
            return "krishna-arjuna-traditional"
        case .family:
            return "krishna-arjuna-traditional" // Same image for now
        case .ethics:
            return "krishna-arjuna-traditional"
        default:
            return "krishna-arjuna-traditional"
        }
    }
    
    var body: some View {
        ZStack {
            // Spiritual background
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            scenario.category.color.opacity(0.1),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 20,
                        endRadius: 100
                    )
                )
            
            // Traditional Gita image
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 140)
                .cornerRadius(12)
                .shadow(
                    color: imageGlow ? scenario.category.color.opacity(0.4) : Color.black.opacity(0.2),
                    radius: imageGlow ? 8 : 4,
                    x: 0,
                    y: 2
                )
                .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: imageGlow)
            
            // Category indicator
            VStack {
                HStack {
                    Image(systemName: scenario.category.icon)
                        .foregroundColor(scenario.category.color)
                        .font(.caption)
                        .padding(6)
                        .background(Color.white.opacity(0.9))
                        .clipShape(Circle())
                    Spacer()
                }
                Spacer()
            }
            .padding(8)
        }
        .onAppear {
            imageGlow = true
        }
    }
}
*/
