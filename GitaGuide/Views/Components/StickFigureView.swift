//
//  StickFigureView.swift - Traditional Image Version
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//


/* VERSION 1.0 -- NISHANT
import SwiftUI

struct StickFigureView: View {
    let scene: String
    
    var body: some View {
        TraditionalGitaImageView(scene: scene)
    }
}

struct TraditionalGitaImageView: View {
    let scene: String
    @State private var imageGlow = false
    @State private var subtleFloat = false
    
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
            
            // The traditional Krishna-Arjuna image
            Image("krishna-arjuna-traditional")
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
            
            // Heart vs Duty labels overlay
            VStack {
                Spacer()
                HStack {
                    Text("💭 Heart Says")
                        .font(.caption2)
                        .foregroundColor(.red)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(8)
                        .shadow(radius: 2)
                    
                    Spacer()
                    
                    Text("⚖️ Duty Says")
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
            withAnimation {
                imageGlow = true
                subtleFloat = true
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Traditional Gita Wisdom")
            .font(.title)
            .fontWeight(.bold)
        
        TraditionalGitaImageView(scene: "work_credit_dilemma")
            .frame(height: 150)
            .background(Color(.systemGray6))
            .cornerRadius(16)
        
        Text("Authentic Bhagavad Gita Artwork")
            .font(.caption)
            .foregroundColor(.secondary)
    }
    .padding()
}
*/


/*  VERSION 2.0 -- NISHANT with 1 PICTURE ACROSS
//
//  StickFigureView.swift - Traditional Image Version
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct StickFigureView: View {
    let scene: String
    
    var body: some View {
        TraditionalGitaImageView(scene: scene)
    }
}

struct TraditionalGitaImageView: View {
    let scene: String
    @State private var imageGlow = false
    @State private var subtleFloat = false
    
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
            
            // The traditional Krishna-Arjuna image - FIXED NAME!
            Image("Image")  // Changed from "krishna-arjuna-traditional" to "Image"
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
            
            // Heart vs Duty labels overlay
            VStack {
                Spacer()
                HStack {
                    Text("💭 Heart Says")
                        .font(.caption2)
                        .foregroundColor(.red)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(8)
                        .shadow(radius: 2)
                    
                    Spacer()
                    
                    Text("⚖️ Duty Says")
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
            withAnimation {
                imageGlow = true
                subtleFloat = true
            }
        }
    }
}

struct TestImageView: View {
    var body: some View {
        VStack {
            Text("Testing Image:")
            
            Image("Image")  // Fixed name here too
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .border(Color.red, width: 2)
            
            Text("Should show Krishna-Arjuna image now!")
                .font(.caption)
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Traditional Gita Wisdom")
            .font(.title)
            .fontWeight(.bold)
        
        TraditionalGitaImageView(scene: "work_credit_dilemma")
            .frame(height: 150)
            .background(Color(.systemGray6))
            .cornerRadius(16)
        
        TestImageView()  // Fixed - removed the scene parameter
            .frame(height: 150)
            .background(Color(.systemGray6))
            .cornerRadius(16)
        
        Text("Authentic Bhagavad Gita Artwork")
            .font(.caption)
            .foregroundColor(.secondary)
    }
    .padding()
}
*/
//
//  StickFigureView.swift - Traditional Image Version
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct StickFigureView: View {
    let scene: String
    
    var body: some View {
        // For now, use random images - you can customize this
        EnhancedScenarioImageView(scenario: nil, imageSelectionMode: .random)
    }
}

// Version that takes a scenario for smarter image selection
struct ScenarioImageView: View {
    let scenario: LifeScenario
    let mode: EnhancedScenarioImageView.ImageSelectionMode = .scenarioSpecific
    
    var body: some View {
        EnhancedScenarioImageView(scenario: scenario, imageSelectionMode: mode)
    }
}

// Traditional Gita Image View with Localization
struct TraditionalGitaImageView: View {
    let scene: String
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var imageGlow = false
    @State private var subtleFloat = false
    
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
            
            // The traditional Krishna-Arjuna image
            Image("Image")  // Your actual image name
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
            
            // Heart vs Duty labels overlay
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
            withAnimation {
                imageGlow = true
                subtleFloat = true
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Multiple Gita Images")
            .font(.title)
            .fontWeight(.bold)
        
        // Different image selection modes
        VStack(spacing: 15) {
            EnhancedScenarioImageView(scenario: nil, imageSelectionMode: .daily)
                .frame(height: 120)
            Text("Daily Image")
                .font(.caption)
            
            EnhancedScenarioImageView(scenario: nil, imageSelectionMode: .random)
                .frame(height: 120)
            Text("Random Image")
                .font(.caption)
            
            TraditionalGitaImageView(scene: "test")
                .frame(height: 150)
            Text("Traditional with Localized Labels")
                .font(.caption)
        }
    }
    .padding()
}
