//
//  AnimatedTransitions.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct WisdomTransition: ViewModifier {
    @State private var isVisible = false
    @State private var scale: CGFloat = 0.8
    @State private var rotation: Double = 0
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(scale)
            .rotationEffect(.degrees(rotation))
            .opacity(isVisible ? 1 : 0)
            .onAppear {
                withAnimation(.spring(response: 0.8, dampingFraction: 0.6)) {
                    isVisible = true
                    scale = 1.0
                }
                withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                    rotation = 3
                }
            }
    }
}

struct DilemmaShake: ViewModifier {
    @State private var shakeOffset: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .offset(x: shakeOffset)
            .onAppear {
                withAnimation(.easeInOut(duration: 0.1).repeatCount(6, autoreverses: true)) {
                    shakeOffset = 5
                }
            }
    }
}

struct DivineGlow: ViewModifier {
    @State private var glowIntensity: Double = 0.5
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .shadow(color: color.opacity(glowIntensity), radius: 10, x: 0, y: 0)
            .onAppear {
                withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                    glowIntensity = 1.0
                }
            }
    }
}

struct FloatingParticles: View {
    @State private var particles: [Particle] = []
    
    struct Particle: Identifiable {
        let id = UUID()
        var x: CGFloat
        var y: CGFloat
        var opacity: Double
        var scale: CGFloat
    }
    
    var body: some View {
        ZStack {
            ForEach(particles) { particle in
                Circle()
                    .fill(Color.orange.opacity(particle.opacity))
                    .frame(width: 4, height: 4)
                    .scaleEffect(particle.scale)
                    .position(x: particle.x, y: particle.y)
            }
        }
        .onAppear {
            createParticles()
            startAnimation()
        }
    }
    
    private func createParticles() {
        particles = (0..<20).map { _ in
            Particle(
                x: CGFloat.random(in: 0...300),
                y: CGFloat.random(in: 0...200),
                opacity: Double.random(in: 0.3...0.8),
                scale: CGFloat.random(in: 0.5...1.5)
            )
        }
    }
    
    private func startAnimation() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 2.0)) {
                for i in particles.indices {
                    particles[i].y -= 2
                    particles[i].opacity *= 0.98
                    
                    if particles[i].y < -10 {
                        particles[i].y = 210
                        particles[i].opacity = Double.random(in: 0.3...0.8)
                    }
                }
            }
        }
    }
}

// Extension for easy use
extension View {
    func wisdomTransition() -> some View {
        modifier(WisdomTransition())
    }
    
    func dilemmaShake() -> some View {
        modifier(DilemmaShake())
    }
    
    func divineGlow(color: Color = .orange) -> some View {
        modifier(DivineGlow(color: color))
    }
}
