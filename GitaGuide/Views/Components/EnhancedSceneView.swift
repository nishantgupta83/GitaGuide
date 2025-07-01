//
//  EnhancedSceneView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct EnhancedDilemmaSceneView: View {
    let scenario: LifeScenario
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var messageAppear = false
    @State private var heartBeat = false
    
    var body: some View {
        ZStack {
            // Enhanced background with sun rays
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.1),
                            Color.yellow.opacity(0.05),
                            Color.blue.opacity(0.08)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // Background sun rays
            SunRaysView()
                .opacity(0.3)
            
            VStack(spacing: 20) {
                // Title with kid-friendly styling
                Text("the_big_decision".localized)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .fontWeight(.bold)
                    .scaleEffect(messageAppear ? 1.0 : 0.5)
                    .animation(.spring(response: 0.8, dampingFraction: 0.6).delay(0.2), value: messageAppear)
                
                HStack(spacing: 50) {
                    // Kid Arjuna with choice
                    VStack(spacing: 8) {
                        KidArjunaView(isConflicted: true)
                        
                        VStack(spacing: 4) {
                            Text("💭")
                                .font(.title2)
                                .scaleEffect(heartBeat ? 1.2 : 1.0)
                                .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: heartBeat)
                            
                            Text("heart_says".localized)
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.red)
                            
                            Text(scenario.heartResponse)
                                .font(.caption2)
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .foregroundColor(.secondary)
                                .frame(width: 80)
                        }
                        .opacity(messageAppear ? 1 : 0)
                        .animation(.easeInOut.delay(0.5), value: messageAppear)
                    }
                    
                    // Kid Krishna with wisdom
                    VStack(spacing: 8) {
                        KidKrishnaView(isTeaching: true)
                        
                        VStack(spacing: 4) {
                            Text("⚖️")
                                .font(.title2)
                                .foregroundColor(.blue)
                            
                            Text("dharma_says".localized)
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                            
                            Text(scenario.dutyResponse)
                                .font(.caption2)
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .foregroundColor(.secondary)
                                .frame(width: 80)
                        }
                        .opacity(messageAppear ? 1 : 0)
                        .animation(.easeInOut.delay(0.8), value: messageAppear)
                    }
                }
                
                // Cute wisdom quote
                HStack {
                    Image(systemName: "quote.bubble.fill")
                        .foregroundColor(.orange)
                        .font(.caption)
                    
                    Text("growth_quote".localized)
                        .font(.caption)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: 200)
                }
                .opacity(messageAppear ? 1 : 0)
                .animation(.easeInOut.delay(1.1), value: messageAppear)
            }
            .padding()
        }
        .onAppear {
            withAnimation {
                messageAppear = true
                heartBeat = true
            }
        }
    }
}

// Floating hearts and sparkles for extra cuteness
struct FloatingCuteElements: View {
    @State private var elements: [CuteElement] = []
    
    struct CuteElement: Identifiable {
        let id = UUID()
        var x: CGFloat
        var y: CGFloat
        var opacity: Double
        var scale: CGFloat
        let symbol: String
        let color: Color
    }
    
    var body: some View {
        ZStack {
            ForEach(elements) { element in
                Text(element.symbol)
                    .font(.caption)
                    .foregroundColor(element.color)
                    .opacity(element.opacity)
                    .scaleEffect(element.scale)
                    .position(x: element.x, y: element.y)
            }
        }
        .onAppear {
            createElements()
            animateElements()
        }
    }
    
    private func createElements() {
        let symbols = ["💖", "✨", "🌟", "💫", "🌸", "🦋"]
        let colors: [Color] = [.pink, .yellow, .orange, .blue, .purple, .green]
        
        elements = (0..<8).map { index in
            CuteElement(
                x: CGFloat.random(in: 20...280),
                y: CGFloat.random(in: 20...180),
                opacity: Double.random(in: 0.3...0.7),
                scale: CGFloat.random(in: 0.5...1.0),
                symbol: symbols[index % symbols.count],
                color: colors[index % colors.count]
            )
        }
    }
    
    private func animateElements() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 3.0)) {
                for i in elements.indices {
                    elements[i].y -= 1
                    elements[i].opacity *= 0.995
                    elements[i].scale *= 0.999
                    
                    if elements[i].y < -20 {
                        elements[i].y = 200
                        elements[i].opacity = Double.random(in: 0.3...0.7)
                        elements[i].scale = CGFloat.random(in: 0.5...1.0)
                        elements[i].x = CGFloat.random(in: 20...280)
                    }
                }
            }
        }
    }
}

// Helper view for sun rays (reused from other files)
struct SunRaysView: View {
    var body: some View {
        ZStack {
            ForEach(0..<12, id: \.self) { index in
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.yellow.opacity(0.6),
                                Color.orange.opacity(0.3),
                                Color.clear
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 60, height: 3)
                    .offset(x: 30)
                    .rotationEffect(.degrees(Double(index) * 30))
                
                // Shorter rays between main rays
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.yellow.opacity(0.4),
                                Color.clear
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 35, height: 2)
                    .offset(x: 20)
                    .rotationEffect(.degrees(Double(index) * 30 + 15))
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Enhanced Scene Views")
            .font(.title)
            .fontWeight(.bold)
        
        if let sampleScenario = SampleData.allScenarios.first {
            EnhancedDilemmaSceneView(scenario: sampleScenario)
                .frame(height: 200)
                .background(Color(.systemGray6))
                .cornerRadius(16)
        }
        
        FloatingCuteElements()
            .frame(height: 100)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
    }
    .padding()
}
