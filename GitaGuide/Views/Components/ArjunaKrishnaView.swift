//
//  ArjunaKrishnaView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct ArjunaKrishnaView: View {
    let scene: String
    @State private var isAnimating = false
    @State private var krishnaGlow = false
    @State private var arjunaBow = false
    
    var body: some View {
        ZStack {
            // Background with spiritual gradient
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.15),
                            Color.blue.opacity(0.15),
                            Color.purple.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // Battlefield ground
            VStack {
                Spacer()
                Rectangle()
                    .fill(Color.brown.opacity(0.3))
                    .frame(height: 20)
            }
            
            HStack(spacing: 40) {
                // Arjuna - The Conflicted Warrior
                VStack(spacing: 8) {
                    Text("Arjuna")
                        .font(.caption)
                        .foregroundColor(.orange)
                        .fontWeight(.semibold)
                    
                    ArjunaCharacterView(isConflicted: scene.contains("dilemma"))
                        .scaleEffect(isAnimating ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: isAnimating)
                    
                    Text("The Warrior")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                
                // Center - Spiritual Energy
                VStack {
                    Image(systemName: "sparkles")
                        .font(.title2)
                        .foregroundColor(.orange)
                        .opacity(krishnaGlow ? 1.0 : 0.5)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: krishnaGlow)
                    
                    Text("🕉️")
                        .font(.title3)
                        .foregroundColor(.purple)
                }
                
                // Krishna - The Divine Guide
                VStack(spacing: 8) {
                    Text("Krishna")
                        .font(.caption)
                        .foregroundColor(.blue)
                        .fontWeight(.semibold)
                    
                    KrishnaCharacterView(isTeaching: scene.contains("wisdom"))
                        .scaleEffect(krishnaGlow ? 1.05 : 1.0)
                        .animation(.easeInOut(duration: 1.8).repeatForever(autoreverses: true), value: krishnaGlow)
                    
                    Text("The Guide")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.bottom, 30)
        }
        .onAppear {
            withAnimation {
                isAnimating = true
                krishnaGlow = true
                arjunaBow = true
            }
        }
    }
}

struct ArjunaCharacterView: View {
    let isConflicted: Bool
    @State private var bowPosition: CGFloat = 0
    
    var body: some View {
        ZStack {
            // Character Body
            VStack(spacing: 2) {
                // Crown/Helmet
                ArjunaHeadView(isConflicted: isConflicted)
                
                // Body
                ArjunaBodyView()
                
                // Bow and Arrow
                ArjunaBowView(isLowered: isConflicted)
                    .offset(x: bowPosition)
                    .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: bowPosition)
            }
        }
        .frame(width: 60, height: 100)
        .onAppear {
            bowPosition = isConflicted ? 5 : -5
        }
    }
}

struct ArjunaHeadView: View {
    let isConflicted: Bool
    
    var body: some View {
        ZStack {
            // Face
            Circle()
                .fill(Color(.systemBackground))
                .frame(width: 25, height: 25)
                .overlay(
                    Circle()
                        .stroke(Color.orange, lineWidth: 2)
                )
            
            // Crown/Helmet
            Path { path in
                path.move(to: CGPoint(x: 6, y: 8))
                path.addLine(to: CGPoint(x: 19, y: 8))
                path.addLine(to: CGPoint(x: 17, y: 4))
                path.addLine(to: CGPoint(x: 8, y: 4))
                path.closeSubpath()
            }
            .fill(Color.yellow.opacity(0.8))
            .frame(width: 25, height: 25)
            
            // Eyes - showing emotion
            HStack(spacing: 4) {
                Circle()
                    .fill(Color.black)
                    .frame(width: 3, height: 3)
                Circle()
                    .fill(Color.black)
                    .frame(width: 3, height: 3)
            }
            .offset(y: -2)
            
            // Mouth - showing conflict or determination
            if isConflicted {
                RoundedRectangle(cornerRadius: 1)
                    .fill(Color.red)
                    .frame(width: 6, height: 1)
                    .offset(y: 4)
            } else {
                Path { path in
                    path.move(to: CGPoint(x: -3, y: 4))
                    path.addQuadCurve(to: CGPoint(x: 3, y: 4), control: CGPoint(x: 0, y: 6))
                }
                .stroke(Color.blue, lineWidth: 1)
            }
        }
    }
}

struct ArjunaBodyView: View {
    var body: some View {
        VStack(spacing: 1) {
            // Torso with armor
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.orange.opacity(0.8), Color.yellow.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 20, height: 35)
                .cornerRadius(3)
                .overlay(
                    VStack(spacing: 2) {
                        Rectangle().fill(Color.yellow).frame(width: 12, height: 2)
                        Rectangle().fill(Color.yellow).frame(width: 12, height: 2)
                        Rectangle().fill(Color.yellow).frame(width: 12, height: 2)
                    }
                )
            
            // Legs
            HStack(spacing: 4) {
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 6, height: 25)
                    .cornerRadius(2)
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 6, height: 25)
                    .cornerRadius(2)
            }
        }
    }
}

struct ArjunaBowView: View {
    let isLowered: Bool
    
    var body: some View {
        ZStack {
            // Bow
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(to: CGPoint(x: 0, y: 30), control: CGPoint(x: -8, y: 15))
            }
            .stroke(Color.brown, lineWidth: 2)
            .rotationEffect(.degrees(isLowered ? 15 : -15))
            
            // Bowstring
            Path { path in
                path.move(to: CGPoint(x: 0, y: 2))
                path.addLine(to: CGPoint(x: 0, y: 28))
            }
            .stroke(Color.gray, lineWidth: 1)
            .rotationEffect(.degrees(isLowered ? 15 : -15))
            
            // Arrow (when ready)
            if !isLowered {
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 20, height: 2)
                    .offset(x: -10)
                    .rotationEffect(.degrees(isLowered ? 15 : -15))
            }
        }
        .offset(x: 25, y: isLowered ? 10 : -5)
    }
}

struct KrishnaCharacterView: View {
    let isTeaching: Bool
    @State private var auraSize: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            // Divine Aura
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.clear]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 40
                    )
                )
                .frame(width: 80, height: 80)
                .scaleEffect(auraSize)
                .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: auraSize)
            
            VStack(spacing: 2) {
                // Krishna's Head with Crown
                KrishnaHeadView(isTeaching: isTeaching)
                
                // Body
                KrishnaBodyView()
                
                // Flowing Robes
                KrishnaRobesView()
            }
        }
        .frame(width: 60, height: 100)
        .onAppear {
            auraSize = 1.2
        }
    }
}

struct KrishnaHeadView: View {
    let isTeaching: Bool
    
    var body: some View {
        ZStack {
            // Face - Blue skin
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.blue.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 25, height: 25)
                .overlay(
                    Circle()
                        .stroke(Color.blue, lineWidth: 1)
                )
            
            // Peacock Feather Crown
            VStack {
                HStack(spacing: 1) {
                    Circle().fill(Color.green).frame(width: 3, height: 3)
                    Circle().fill(Color.blue).frame(width: 2, height: 2)
                    Circle().fill(Color.purple).frame(width: 3, height: 3)
                    Circle().fill(Color.blue).frame(width: 2, height: 2)
                    Circle().fill(Color.green).frame(width: 3, height: 3)
                }
                .offset(y: -18)
                
                Spacer()
            }
            
            // Eyes - Serene and wise
            HStack(spacing: 4) {
                Circle()
                    .fill(Color.black)
                    .frame(width: 3, height: 3)
                Circle()
                    .fill(Color.black)
                    .frame(width: 3, height: 3)
            }
            .offset(y: -2)
            
            // Gentle smile
            Path { path in
                path.move(to: CGPoint(x: -4, y: 4))
                path.addQuadCurve(to: CGPoint(x: 4, y: 4), control: CGPoint(x: 0, y: 7))
            }
            .stroke(Color.yellow, lineWidth: 1.5)
            
            // Third eye (when teaching)
            if isTeaching {
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 4, height: 4)
                    .offset(y: -8)
                    .opacity(0.8)
            }
        }
    }
}

struct KrishnaBodyView: View {
    var body: some View {
        VStack(spacing: 1) {
            // Torso with divine ornaments
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow.opacity(0.8), Color.orange.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 18, height: 30)
                .cornerRadius(4)
                .overlay(
                    VStack(spacing: 3) {
                        // Sacred thread
                        Path { path in
                            path.move(to: CGPoint(x: -8, y: 0))
                            path.addQuadCurve(to: CGPoint(x: 8, y: 15), control: CGPoint(x: 0, y: 8))
                        }
                        .stroke(Color.white, lineWidth: 1)
                        
                        // Divine symbols
                        Text("🕉️")
                            .font(.caption2)
                            .offset(y: 5)
                    }
                )
            
            // Arms in teaching gesture
            HStack(spacing: 25) {
                // Left arm - open palm
                Rectangle()
                    .fill(Color.blue.opacity(0.7))
                    .frame(width: 3, height: 15)
                    .rotationEffect(.degrees(-30))
                
                // Right arm - pointing/teaching
                Rectangle()
                    .fill(Color.blue.opacity(0.7))
                    .frame(width: 3, height: 15)
                    .rotationEffect(.degrees(45))
            }
            .offset(y: -15)
        }
    }
}

struct KrishnaRobesView: View {
    @State private var flowing = false
    
    var body: some View {
        VStack {
            // Flowing yellow robes
            Path { path in
                path.move(to: CGPoint(x: -12, y: 0))
                path.addQuadCurve(to: CGPoint(x: 12, y: 0), control: CGPoint(x: 0, y: flowing ? -5 : 5))
                path.addLine(to: CGPoint(x: 8, y: 25))
                path.addLine(to: CGPoint(x: -8, y: 25))
                path.closeSubpath()
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.yellow.opacity(0.8), Color.orange.opacity(0.6)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .animation(.easeInOut(duration: 3.0).repeatForever(autoreverses: true), value: flowing)
            
            // Legs
            HStack(spacing: 4) {
                Rectangle()
                    .fill(Color.blue.opacity(0.7))
                    .frame(width: 5, height: 20)
                    .cornerRadius(2)
                Rectangle()
                    .fill(Color.blue.opacity(0.7))
                    .frame(width: 5, height: 20)
                    .cornerRadius(2)
            }
        }
        .onAppear {
            flowing = true
        }
    }
}

// Enhanced Scene-Specific Views
struct DilemmaSceneView: View {
    var body: some View {
        ZStack {
            // Battlefield background
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.1),
                            Color.red.opacity(0.05),
                            Color.brown.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            VStack(spacing: 20) {
                Text("The Eternal Dilemma")
                    .font(.headline)
                    .foregroundColor(.orange)
                
                HStack(spacing: 50) {
                    // Conflicted Arjuna
                    VStack {
                        ArjunaCharacterView(isConflicted: true)
                        
                        VStack(spacing: 4) {
                            Text("💭 Heart")
                                .font(.caption)
                                .foregroundColor(.red)
                            Text("Attachment")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    // Teaching Krishna
                    VStack {
                        KrishnaCharacterView(isTeaching: true)
                        
                        VStack(spacing: 4) {
                            Text("⚖️ Dharma")
                                .font(.caption)
                                .foregroundColor(.blue)
                            Text("Righteous Duty")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                
                Text("\"Your right is to perform your actions, but never to the fruits of action.\"")
                    .font(.caption)
                    .italic()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    VStack(spacing: 30) {
        ArjunaKrishnaView(scene: "dilemma")
            .frame(height: 150)
        
        DilemmaSceneView()
            .frame(height: 200)
        
        HStack(spacing: 30) {
            VStack {
                ArjunaCharacterView(isConflicted: true)
                Text("Conflicted")
                    .font(.caption)
            }
            
            VStack {
                ArjunaCharacterView(isConflicted: false)
                Text("Determined")
                    .font(.caption)
            }
            
            VStack {
                KrishnaCharacterView(isTeaching: false)
                Text("Peaceful")
                    .font(.caption)
            }
            
            VStack {
                KrishnaCharacterView(isTeaching: true)
                Text("Teaching")
                    .font(.caption)
            }
        }
    }
    .padding()
}
// Add to ArjunaKrishnaView.swift

extension ArjunaKrishnaView {
    func characterStateFor(scenario: LifeScenario) -> (arjunaState: String, krishnaState: String) {
        switch scenario.category {
        case .work:
            return ("conflicted", "guiding")
        case .relationships:
            return ("torn", "compassionate")
        case .ethics:
            return ("determined", "teaching")
        case .personal:
            return ("worried", "peaceful")
    //    case .work:
     //       return ("responsible", "wise")
        default:
            return ("conflicted", "teaching")
        }
    }
}
