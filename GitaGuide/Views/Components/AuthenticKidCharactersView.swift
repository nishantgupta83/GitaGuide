//
//  AuthenticKidCharactersView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct AuthenticKidArjunaKrishnaView: View {
    let scene: String
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var isAnimating = false
    @State private var sunRotation: Double = 0
    @State private var characterBounce = false
    @State private var krishnaGlow = false
    
    var body: some View {
        ZStack {
            // Background with spiritual gradient
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.08),
                            Color.yellow.opacity(0.12),
                            Color.blue.opacity(0.08)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // Ground/battlefield base
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.brown.opacity(0.2))
                    .frame(height: 15)
                    .overlay(
                        HStack(spacing: 4) {
                            ForEach(0..<8, id: \.self) { _ in
                                Circle()
                                    .fill(Color.green.opacity(0.3))
                                    .frame(width: 3, height: 3)
                            }
                        }
                    )
            }
            
            HStack(spacing: 40) {
                // Kid Arjuna - The Young Warrior
                VStack(spacing: 8) {
                    Text("Arjuna".localized)
                        .font(.caption)
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                    
                    AuthenticKidArjunaView(isConflicted: scene.contains("dilemma"))
                        .scaleEffect(characterBounce ? 1.05 : 1.0)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: characterBounce)
                    
                    Text("Young Warrior".localized)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                
                // Krishna with Divine Sun Rays emanating from behind
                ZStack {
                    // Dramatic Sun Rays specifically from Krishna
                    KrishnaSunRaysView()
                        .rotationEffect(.degrees(sunRotation))
                        .animation(.linear(duration: 25).repeatForever(autoreverses: false), value: sunRotation)
                        .scaleEffect(krishnaGlow ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: krishnaGlow)
                    
                    // Kid Krishna - The Divine Guide
                    VStack(spacing: 8) {
                        Text("Krishna".localized)
                            .font(.caption)
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                        
                        AuthenticKidKrishnaView(isTeaching: scene.contains("wisdom"))
                            .scaleEffect(characterBounce ? 1.08 : 1.0)
                            .animation(.easeInOut(duration: 1.8).repeatForever(autoreverses: true), value: characterBounce)
                        
                        Text("Divine Friend".localized)
                            .font(.caption2)
                            .foregroundColor(.secondary)
                    }
                    .zIndex(1) // Keep Krishna in front of rays
                }
                
                // Divine sparkles between them
                VStack {
                    EnhancedSparkleEffect()
                    Text("🕉️")
                        .font(.title2)
                        .foregroundColor(.orange)
                        .scaleEffect(isAnimating ? 1.2 : 1.0)
                        .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: isAnimating)
                }
            }
            .padding(.bottom, 25)
        }
        .onAppear {
            withAnimation {
                isAnimating = true
                characterBounce = true
                krishnaGlow = true
                sunRotation = 360
            }
        }
    }
}

struct KrishnaSunRaysView: View {
    var body: some View {
        ZStack {
            // Major divine rays
            ForEach(0..<16, id: \.self) { index in
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.yellow.opacity(0.8),
                                Color.orange.opacity(0.6),
                                Color.yellow.opacity(0.3),
                                Color.clear
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 80, height: 4)
                    .offset(x: 40)
                    .rotationEffect(.degrees(Double(index) * 22.5))
                
                // Secondary rays for more divine effect
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.white.opacity(0.7),
                                Color.yellow.opacity(0.4),
                                Color.clear
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 60, height: 2)
                    .offset(x: 30)
                    .rotationEffect(.degrees(Double(index) * 22.5 + 11.25))
                
                // Inner brilliant rays
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.white.opacity(0.9),
                                Color.yellow.opacity(0.7),
                                Color.orange.opacity(0.5),
                                Color.clear
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 45, height: 3)
                    .offset(x: 22)
                    .rotationEffect(.degrees(Double(index) * 22.5))
            }
            
            // Central divine glow
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.white.opacity(0.8),
                            Color.yellow.opacity(0.6),
                            Color.orange.opacity(0.3),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 0,
                        endRadius: 30
                    )
                )
                .frame(width: 60, height: 60)
        }
    }
}

struct EnhancedSparkleEffect: View {
    @State private var sparkles: [EnhancedSparkleParticle] = []
    
    struct EnhancedSparkleParticle: Identifiable {
        let id = UUID()
        var x: CGFloat
        var y: CGFloat
        var opacity: Double
        var scale: CGFloat
        var rotation: Double
        let symbol: String
    }
    
    var body: some View {
        ZStack {
            ForEach(sparkles) { sparkle in
                Text(sparkle.symbol)
                    .font(.caption2)
                    .foregroundColor(.yellow)
                    .opacity(sparkle.opacity)
                    .scaleEffect(sparkle.scale)
                    .rotationEffect(.degrees(sparkle.rotation))
                    .position(x: sparkle.x, y: sparkle.y)
            }
        }
        .frame(width: 40, height: 40)
        .onAppear {
            createSparkles()
            animateSparkles()
        }
    }
    
    private func createSparkles() {
        let symbols = ["✨", "⭐", "🌟", "💫"]
        sparkles = (0..<8).map { index in
            EnhancedSparkleParticle(
                x: CGFloat.random(in: 10...30),
                y: CGFloat.random(in: 10...30),
                opacity: Double.random(in: 0.5...1.0),
                scale: CGFloat.random(in: 0.3...0.8),
                rotation: Double.random(in: 0...360),
                symbol: symbols[index % symbols.count]
            )
        }
    }
    
    private func animateSparkles() {
        withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
            for i in sparkles.indices {
                sparkles[i].opacity = sparkles[i].opacity > 0.5 ? 0.2 : 1.0
                sparkles[i].scale = sparkles[i].scale > 0.5 ? 0.3 : 0.8
                sparkles[i].rotation += 180
            }
        }
    }
}

struct AuthenticKidArjunaView: View {
    let isConflicted: Bool
    @State private var eyeBlink = false
    @State private var bowSway = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 3) {
                // Authentic head with traditional features
                AuthenticKidArjunaHeadView(isConflicted: isConflicted, eyeBlink: eyeBlink)
                
                // Traditional body with armor
                AuthenticKidArjunaBodyView()
                
                // Traditional bow
                AuthenticKidBowView(isLowered: isConflicted, sway: bowSway)
            }
        }
        .frame(width: 50, height: 90)
        .onAppear {
            // Blinking animation
            Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 0.1)) {
                    eyeBlink.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation(.easeInOut(duration: 0.1)) {
                        eyeBlink.toggle()
                    }
                }
            }
            
            // Bow sway
            withAnimation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true)) {
                bowSway = true
            }
        }
    }
}

struct AuthenticKidArjunaHeadView: View {
    let isConflicted: Bool
    let eyeBlink: Bool
    
    var body: some View {
        ZStack {
            // Fair skin face
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(.systemBackground), Color.orange.opacity(0.1)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 28, height: 28)
                .overlay(
                    Circle()
                        .stroke(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.orange, Color.yellow]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 2
                        )
                )
            
            // Traditional warrior crown/mukut
            VStack {
                ZStack {
                    // Base crown
                    RoundedRectangle(cornerRadius: 3)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.yellow, Color.orange]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .frame(width: 24, height: 8)
                    
                    // Crown jewels
                    HStack(spacing: 3) {
                        Circle().fill(Color.red).frame(width: 3, height: 3)
                        Circle().fill(Color.blue).frame(width: 3, height: 3)
                        Circle().fill(Color.green).frame(width: 3, height: 3)
                        Circle().fill(Color.blue).frame(width: 3, height: 3)
                        Circle().fill(Color.red).frame(width: 3, height: 3)
                    }
                }
                .offset(y: -18)
                Spacer()
            }
            
            // Expressive eyes
            HStack(spacing: 5) {
                // Left eye
                ZStack {
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 7, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.brown)
                            .frame(width: 4, height: 4)
                            .offset(x: isConflicted ? -1 : 0, y: isConflicted ? 1 : 0)
                        // Eye shine
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1.5, height: 1.5)
                            .offset(x: -1, y: -1)
                    }
                }
                
                // Right eye
                ZStack {
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 7, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.brown)
                            .frame(width: 4, height: 4)
                            .offset(x: isConflicted ? 1 : 0, y: isConflicted ? 1 : 0)
                        // Eye shine
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1.5, height: 1.5)
                            .offset(x: -1, y: -1)
                    }
                }
            }
            .offset(y: -3)
            
            // Traditional tilaka (forehead mark)
            VStack(spacing: 1) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 2, height: 6)
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 4, height: 2)
            }
            .offset(y: -10)
            
            // Expressive mouth
            if isConflicted {
                // Worried expression
                Path { path in
                    path.move(to: CGPoint(x: -6, y: 6))
                    path.addQuadCurve(to: CGPoint(x: 6, y: 6), control: CGPoint(x: 0, y: 3))
                }
                .stroke(Color.red, lineWidth: 1.5)
            } else {
                // Determined smile
                Path { path in
                    path.move(to: CGPoint(x: -5, y: 5))
                    path.addQuadCurve(to: CGPoint(x: 5, y: 5), control: CGPoint(x: 0, y: 8))
                }
                .stroke(Color.brown, lineWidth: 1.5)
            }
        }
    }
}

struct AuthenticKidArjunaBodyView: View {
    var body: some View {
        VStack(spacing: 2) {
            // Traditional armor with patterns
            RoundedRectangle(cornerRadius: 6)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.orange.opacity(0.9), Color.yellow.opacity(0.7)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 20, height: 28)
                .overlay(
                    VStack(spacing: 2) {
                        // Armor decorations
                        HStack(spacing: 2) {
                            Circle().fill(Color.yellow).frame(width: 3, height: 3)
                            Circle().fill(Color.red).frame(width: 3, height: 3)
                            Circle().fill(Color.yellow).frame(width: 3, height: 3)
                        }
                        
                        // Sacred thread
                        Path { path in
                            path.move(to: CGPoint(x: -8, y: 0))
                            path.addQuadCurve(to: CGPoint(x: 8, y: 10), control: CGPoint(x: 0, y: 5))
                        }
                        .stroke(Color.white, lineWidth: 1)
                        
                        Text("अ")
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                )
            
            // Traditional dhoti/lower garment
            RoundedRectangle(cornerRadius: 4)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow.opacity(0.8), Color.orange.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 18, height: 18)
            
            // Legs
            HStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.brown.opacity(0.7))
                    .frame(width: 5, height: 18)
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.brown.opacity(0.7))
                    .frame(width: 5, height: 18)
            }
            
            // Traditional sandals
            HStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.brown)
                    .frame(width: 7, height: 4)
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.brown)
                    .frame(width: 7, height: 4)
            }
        }
    }
}

struct AuthenticKidBowView: View {
    let isLowered: Bool
    let sway: Bool
    
    var body: some View {
        ZStack {
            // Traditional bow with curves
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(to: CGPoint(x: 0, y: 22), control: CGPoint(x: -7, y: 11))
            }
            .stroke(
                LinearGradient(
                    gradient: Gradient(colors: [Color.brown, Color.yellow.opacity(0.7)]),
                    startPoint: .top,
                    endPoint: .bottom
                ),
                lineWidth: 2.5
            )
            .rotationEffect(.degrees(isLowered ? 25 : -10))
            .rotationEffect(.degrees(sway ? 5 : -5))
            
            // Bowstring with shine
            Path { path in
                path.move(to: CGPoint(x: 0, y: 1))
                path.addLine(to: CGPoint(x: 0, y: 21))
            }
            .stroke(Color.white.opacity(0.9), lineWidth: 1)
            .rotationEffect(.degrees(isLowered ? 25 : -10))
            .rotationEffect(.degrees(sway ? 5 : -5))
            
            // Traditional arrow
            if !isLowered {
                HStack(spacing: 0) {
                    // Arrow head
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: 0))
                        path.addLine(to: CGPoint(x: -3, y: 3))
                        path.addLine(to: CGPoint(x: -3, y: -3))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .frame(width: 4, height: 6)
                    
                    // Arrow shaft
                    Rectangle()
                        .fill(Color.brown)
                        .frame(width: 14, height: 1.5)
                    
                    // Feathers
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: -2))
                        path.addLine(to: CGPoint(x: 4, y: -1))
                        path.addLine(to: CGPoint(x: 4, y: 1))
                        path.addLine(to: CGPoint(x: 0, y: 2))
                    }
                    .fill(Color.yellow)
                    .frame(width: 4, height: 4)
                }
                .offset(x: -10)
                .rotationEffect(.degrees(isLowered ? 25 : -10))
            }
        }
        .offset(x: 22, y: isLowered ? 8 : -2)
    }
}

struct AuthenticKidKrishnaView: View {
    let isTeaching: Bool
    @State private var eyeBlink = false
    @State private var auraEffect = false
    @State private var featherDance = false
    
    var body: some View {
        ZStack {
            // Divine aura around Krishna
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.blue.opacity(auraEffect ? 0.5 : 0.3),
                            Color.purple.opacity(0.2),
                            Color.yellow.opacity(0.1),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 5,
                        endRadius: 40
                    )
                )
                .frame(width: 80, height: 80)
                .scaleEffect(auraEffect ? 1.3 : 1.0)
                .animation(.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: auraEffect)
            
            VStack(spacing: 3) {
                // Authentic Krishna head
                AuthenticKidKrishnaHeadView(isTeaching: isTeaching, eyeBlink: eyeBlink, featherDance: featherDance)
                
                // Divine body
                AuthenticKidKrishnaBodyView(isTeaching: isTeaching)
                
                // Flowing robes
                AuthenticKidKrishnaRobesView()
            }
        }
        .frame(width: 50, height: 90)
        .onAppear {
            auraEffect = true
            
            // Blinking animation
            Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 0.1)) {
                    eyeBlink.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation(.easeInOut(duration: 0.1)) {
                        eyeBlink.toggle()
                    }
                }
            }
            
            // Feather dance
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                featherDance = true
            }
        }
    }
}

struct AuthenticKidKrishnaHeadView: View {
    let isTeaching: Bool
    let eyeBlink: Bool
    let featherDance: Bool
    
    var body: some View {
        ZStack {
            // Blue skin like traditional Krishna
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.blue.opacity(0.8),
                            Color.blue.opacity(0.6),
                            Color.cyan.opacity(0.3)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 28, height: 28)
                .overlay(
                    Circle()
                        .stroke(Color.blue.opacity(0.7), lineWidth: 2)
                )
            
            // Traditional peacock feather crown
            VStack {
                ZStack {
                    // Feather base
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.brown.opacity(0.8))
                        .frame(width: 20, height: 4)
                    
                    // Peacock feathers
                    HStack(spacing: 1) {
                        ForEach(0..<5, id: \.self) { index in
                            VStack(spacing: 0) {
                                // Feather eye
                                Circle()
                                    .fill(
                                        RadialGradient(
                                            gradient: Gradient(colors: [Color.blue, Color.green, Color.purple]),
                                            center: .center,
                                            startRadius: 0,
                                            endRadius: 3
                                        )
                                    )
                                    .frame(width: 4, height: 4)
                                    .overlay(
                                        Circle()
                                            .fill(Color.black)
                                            .frame(width: 2, height: 2)
                                    )
                                
                                // Feather stem
                                Rectangle()
                                    .fill(Color.green.opacity(0.8))
                                    .frame(width: 1, height: 6)
                            }
                            .rotationEffect(.degrees(featherDance ? Double(index * 8) : Double(-index * 4)))
                        }
                    }
                }
                .offset(y: -24)
                Spacer()
            }
            
            // Beautiful divine eyes
            HStack(spacing: 5) {
                // Left eye
                ZStack {
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 7, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.black)
                            .frame(width: 4, height: 4)
                        // Divine sparkle
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1.5, height: 1.5)
                            .offset(x: -1, y: -1)
                    }
                }
                
                // Right eye
                ZStack {
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 7, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.black)
                            .frame(width: 4, height: 4)
                        // Divine sparkle
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1.5, height: 1.5)
                            .offset(x: -1, y: -1)
                    }
                }
            }
            .offset(y: -3)
            
            // Traditional tilaka on forehead
            VStack(spacing: 1) {
                // Main vertical line
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 2, height: 8)
                // Horizontal lines
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 6, height: 1)
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 4, height: 1)
            }
            .offset(y: -10)
            
            // Divine mark when teaching
            if isTeaching {
                Circle()
                    .fill(Color.yellow.opacity(0.8))
                    .frame(width: 3, height: 3)
                    .offset(y: -12)
            }
            
            // Gentle divine smile
            Path { path in
                path.move(to: CGPoint(x: -6, y: 5))
                path.addQuadCurve(to: CGPoint(x: 6, y: 5), control: CGPoint(x: 0, y: 9))
            }
            .stroke(Color.red, lineWidth: 1.5)
        }
    }
}

struct AuthenticKidKrishnaBodyView: View {
    let isTeaching: Bool
    
    var body: some View {
        VStack(spacing: 1) {
            // Traditional divine vest with ornaments
            RoundedRectangle(cornerRadius: 6)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow.opacity(0.9), Color.orange.opacity(0.7)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 18, height: 24)
                .overlay(
                    VStack(spacing: 2) {
                        // Sacred symbol
                        Text("🕉️")
                            .font(.caption2)
                        
                        // Ornament necklace
                        HStack(spacing: 1) {
                            Circle().fill(Color.white).frame(width: 2, height: 2)
                            Circle().fill(Color.yellow).frame(width: 2, height: 2)
                            Circle().fill(Color.white).frame(width: 2, height: 2)
                            Circle().fill(Color.yellow).frame(width: 2, height: 2)
                            Circle().fill(Color.white).frame(width: 2, height: 2)
                        }
                        
                        // Sacred thread
                        Path { path in
                            path.move(to: CGPoint(x: -8, y: 0))
                            path.addQuadCurve(to: CGPoint(x: 8, y: 8), control: CGPoint(x: 0, y: 4))
                        }
                        .stroke(Color.white, lineWidth: 1)
                    }
                )
            
            // Divine arms in blessing/teaching pose
            if isTeaching {
                HStack(spacing: 22) {
                    // Left arm - blessing gesture
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.blue.opacity(0.6))
                        .frame(width: 2, height: 12)
                        .rotationEffect(.degrees(-30))
                    
                    // Right arm - pointing/explaining
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.blue.opacity(0.6))
                        .frame(width: 2, height: 12)
                        .rotationEffect(.degrees(45))
                }
                .offset(y: -10)
            }
        }
    }
}

struct AuthenticKidKrishnaRobesView: View {
    @State private var robeFlow = false
    
    var body: some View {
        VStack(spacing: 2) {
            // Traditional flowing dhoti
            Path { path in
                path.move(to: CGPoint(x: -12, y: 0))
                path.addQuadCurve(to: CGPoint(x: 12, y: 0), control: CGPoint(x: 0, y: robeFlow ? -4 : 4))
                path.addLine(to: CGPoint(x: 8, y: 20))
                path.addLine(to: CGPoint(x: -8, y: 20))
                path.closeSubpath()
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.yellow.opacity(0.8),
                        Color.orange.opacity(0.6),
                        Color.yellow.opacity(0.7)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .overlay(
                // Traditional border pattern
                VStack(spacing: 2) {
                    Spacer()
                    Rectangle()
                        .fill(Color.red.opacity(0.7))
                        .frame(height: 2)
                    Rectangle()
                        .fill(Color.gold.opacity(0.7))
                        .frame(height: 1)
                }
            )
            .animation(.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: robeFlow)
            
            // Divine blue legs
            HStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue.opacity(0.6))
                    .frame(width: 4, height: 15)
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue.opacity(0.6))
                    .frame(width: 4, height: 15)
            }
            
            // Golden divine feet
            HStack(spacing: 3) {
                Ellipse()
                    .fill(Color.yellow.opacity(0.9))
                    .frame(width: 5, height: 3)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 1, height: 1)
                    )
                Ellipse()
                    .fill(Color.yellow.opacity(0.9))
                    .frame(width: 5, height: 3)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 1, height: 1)
                    )
            }
        }
        .onAppear {
            robeFlow = true
        }
    }
}

extension Color {
    static let gold = Color(red: 1.0, green: 0.84, blue: 0.0)
}

#Preview {
    VStack(spacing: 30) {
        Text("Authentic Kid Krishna & Arjuna")
            .font(.title)
            .fontWeight(.bold)
        
        AuthenticKidArjunaKrishnaView(scene: "work_dilemma")
            .frame(height: 160)
            .background(Color(.systemGray6))
            .cornerRadius(16)
        
        HStack(spacing: 30) {
            VStack {
                AuthenticKidArjunaView(isConflicted: true)
                Text("Worried Arjuna")
                    .font(.caption)
            }
            
            VStack {
                AuthenticKidKrishnaView(isTeaching: true)
                Text("Teaching Krishna")
                    .font(.caption)
            }
            
            VStack {
                AuthenticKidArjunaView(isConflicted: false)
                Text("Happy Arjuna")
                    .font(.caption)
            }
        }
    }
    .padding()
}
