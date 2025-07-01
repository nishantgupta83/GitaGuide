//
//  EnhancedImageView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct EnhancedScenarioImageView: View {
    let scenario: LifeScenario?
    let imageSelectionMode: ImageSelectionMode
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var imageGlow = false
    @State private var subtleFloat = false
    @State private var currentImageName: String = ""
    
    enum ImageSelectionMode {
        case scenarioSpecific
        case random
        case daily
        case categoryBased
    }
    
    var body: some View {
        ZStack {
            // Background with spiritual gradient
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.1),
                            Color.yellow.opacity(0.08),
                            Color.blue.opacity(0.06)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // The Gita image
            Image(currentImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 130)
                .cornerRadius(12)
                .scaleEffect(subtleFloat ? 1.02 : 1.0)
                .animation(.easeInOut(duration: 3.0).repeatForever(autoreverses: true), value: subtleFloat)
                .shadow(
                    color: imageGlow ? Color.orange.opacity(0.6) : Color.orange.opacity(0.2),
                    radius: imageGlow ? 12 : 6,
                    x: 0,
                    y: 2
                )
                .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: imageGlow)
            
            // Category indicator (if scenario available)
            if let scenario = scenario {
                VStack {
                    HStack {
                        Image(systemName: scenario.category.icon)
                            .foregroundColor(scenario.category.color)
                            .font(.caption)
                            .padding(6)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .shadow(radius: 2)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(8)
            }
            
            // Heart vs Duty labels overlay with localization
            VStack {
                Spacer()
                HStack {
                    Text("heart_says".localized)
                        .font(.caption2)
                        .foregroundColor(.red)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(8)
                        .shadow(radius: 2)
                    
                    Spacer()
                    
                    Text("duty_says".localized)
                        .font(.caption2)
                        .foregroundColor(.blue)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(8)
                        .shadow(radius: 2)
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
            }
        }
        .onAppear {
          //  selectImage()
            withAnimation {
                imageGlow = true
                subtleFloat = true
            }
        }
    }
    
    private func selectImage() {
        switch imageSelectionMode {
        case .scenarioSpecific:
            if let scenario = scenario {
                currentImageName = ScenarioImageManager.getImageForScenario(scenario)
            } else {
                currentImageName = ScenarioImageManager.getRandomImage()
            }
        case .random:
            currentImageName = ScenarioImageManager.getRandomImage()
        case .daily:
            currentImageName = ScenarioImageManager.getDailyImage()
        case .categoryBased:
            if let scenario = scenario {
                currentImageName = ScenarioImageManager.getImageForCategory(scenario.category)
            } else {
                currentImageName = ScenarioImageManager.getRandomImage()
            }
        }
    }
}

// Simple wrapper to maintain compatibility
struct MultipleImagesView: View {
    let scenario: LifeScenario?
    let mode: EnhancedScenarioImageView.ImageSelectionMode
    
    var body: some View {
        EnhancedScenarioImageView(scenario: scenario, imageSelectionMode: mode)
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Enhanced Image Views")
            .font(.title)
            .fontWeight(.bold)
        
        EnhancedScenarioImageView(scenario: nil, imageSelectionMode: .daily)
            .frame(height: 150)
        
        EnhancedScenarioImageView(scenario: nil, imageSelectionMode: .random)
            .frame(height: 150)
    }
    .padding()
}
