//
//  KidCharactersView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct KidArjunaKrishnaView: View {
    let scene: String
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var isAnimating = false
    @State private var sunRotation: Double = 0
    @State private var characterBounce = false
    
    var body: some View {
        ZStack {
            // Background with spiritual gradient
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.1),
                            Color.yellow.opacity(0.15),
                            Color.blue.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            
            // Animated Sun Rays
            SunRaysView()
                .rotationEffect(.degrees(sunRotation))
                .animation(.linear(duration: 20).repeatForever(autoreverses: false), value: sunRotation)
            
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
                    Text("arjuna".localized)
                        .font(.caption)
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                    
                    KidArjunaView(isConflicted: scene.contains("dilemma"))
                        .scaleEffect(characterBounce ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: characterBounce)
                    
                    Text("young_warrior".localized)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                
                // Divine sparkles between them
                VStack {
                    SparkleEffect()
                    Text("🕉️")
                        .font(.title2)
                        .foregroundColor(.orange)
                        .scaleEffect(isAnimating ? 1.2 : 1.0)
                        .animation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true), value: isAnimating)
                }
                
                // Kid Krishna - The Divine Friend
                VStack(spacing: 8) {
                    Text("krishna".localized)
                        .font(.caption)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                    
                    KidKrishnaView(isTeaching: scene.contains("wisdom"))
                        .scaleEffect(characterBounce ? 1.05 : 1.0)
                        .animation(.easeInOut(duration: 1.8).repeatForever(autoreverses: true), value: characterBounce)
                    
                    Text("divine_friend".localized)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.bottom, 25)
        }
        .onAppear {
            withAnimation {
                isAnimating = true
                characterBounce = true
                sunRotation = 360
            }
        }
    }
}

struct SparkleEffect: View {
    @State private var sparkles: [SparkleParticle] = []
    
    struct SparkleParticle: Identifiable {
        let id = UUID()
        var x: CGFloat
        var y: CGFloat
        var opacity: Double
        var scale: CGFloat
        var rotation: Double
    }
    
    var body: some View {
        ZStack {
            ForEach(sparkles) { sparkle in
                Image(systemName: "sparkle")
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
        sparkles = (0..<6).map { _ in
            SparkleParticle(
                x: CGFloat.random(in: 10...30),
                y: CGFloat.random(in: 10...30),
                opacity: Double.random(in: 0.5...1.0),
                scale: CGFloat.random(in: 0.3...0.8),
                rotation: Double.random(in: 0...360)
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

struct KidArjunaView: View {
    let isConflicted: Bool
    @State private var eyeBlink = false
    @State private var bowSway = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 3) {
                // Cute head with big eyes
                KidArjunaHeadView(isConflicted: isConflicted, eyeBlink: eyeBlink)
                
                // Small cute body
                KidArjunaBodyView()
                
                // Tiny bow (scaled down for kid)
                KidBowView(isLowered: isConflicted, sway: bowSway)
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

struct KidArjunaHeadView: View {
    let isConflicted: Bool
    let eyeBlink: Bool
    
    var body: some View {
        ZStack {
            // Round cute face
            Circle()
                .fill(Color(.systemBackground))
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
            
            // Cute crown
            VStack {
                HStack(spacing: 2) {
                    Triangle()
                        .fill(Color.yellow)
                        .frame(width: 6, height: 6)
                    Triangle()
                        .fill(Color.orange)
                        .frame(width: 8, height: 8)
                    Triangle()
                        .fill(Color.yellow)
                        .frame(width: 6, height: 6)
                }
                .offset(y: -20)
                Spacer()
            }
            
            // Big cute eyes
            HStack(spacing: 5) {
                // Left eye
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 6, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.black)
                            .frame(width: 3, height: 3)
                            .offset(x: isConflicted ? -1 : 0, y: isConflicted ? 1 : 0)
                    }
                }
                
                // Right eye
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 6, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.black)
                            .frame(width: 3, height: 3)
                            .offset(x: isConflicted ? 1 : 0, y: isConflicted ? 1 : 0)
                    }
                }
            }
            .offset(y: -3)
            
            // Cute mouth
            if isConflicted {
                // Worried mouth
                Ellipse()
                    .stroke(Color.red, lineWidth: 1.5)
                    .frame(width: 8, height: 4)
                    .rotationEffect(.degrees(180))
                    .offset(y: 5)
            } else {
                // Happy smile
                Path { path in
                    path.move(to: CGPoint(x: -5, y: 5))
                    path.addQuadCurve(to: CGPoint(x: 5, y: 5), control: CGPoint(x: 0, y: 8))
                }
                .stroke(Color.blue, lineWidth: 1.5)
            }
            
            // Cute blush marks
            HStack(spacing: 16) {
                Circle()
                    .fill(Color.pink.opacity(0.3))
                    .frame(width: 4, height: 4)
                Circle()
                    .fill(Color.pink.opacity(0.3))
                    .frame(width: 4, height: 4)
            }
            .offset(y: 2)
        }
    }
}

struct KidArjunaBodyView: View {
    var body: some View {
        VStack(spacing: 2) {
            // Cute armor vest
            RoundedRectangle(cornerRadius: 6)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.orange.opacity(0.8), Color.yellow.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 18, height: 25)
                .overlay(
                    VStack(spacing: 2) {
                        HStack(spacing: 2) {
                            Circle().fill(Color.yellow).frame(width: 3, height: 3)
                            Circle().fill(Color.yellow).frame(width: 3, height: 3)
                        }
                        Text("A")
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                )
            
            // Cute little legs
            HStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.brown.opacity(0.7))
                    .frame(width: 5, height: 18)
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.brown.opacity(0.7))
                    .frame(width: 5, height: 18)
            }
            
            // Cute shoes
            HStack(spacing: 3) {
                Ellipse()
                    .fill(Color.brown)
                    .frame(width: 6, height: 4)
                Ellipse()
                    .fill(Color.brown)
                    .frame(width: 6, height: 4)
            }
        }
    }
}

struct KidBowView: View {
    let isLowered: Bool
    let sway: Bool
    
    var body: some View {
        ZStack {
            // Cute mini bow
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(to: CGPoint(x: 0, y: 20), control: CGPoint(x: -6, y: 10))
            }
            .stroke(Color.brown, lineWidth: 2)
            .rotationEffect(.degrees(isLowered ? 25 : -10))
            .rotationEffect(.degrees(sway ? 5 : -5))
            
            // Bowstring
            Path { path in
                path.move(to: CGPoint(x: 0, y: 1))
                path.addLine(to: CGPoint(x: 0, y: 19))
            }
            .stroke(Color.gray, lineWidth: 1)
            .rotationEffect(.degrees(isLowered ? 25 : -10))
            .rotationEffect(.degrees(sway ? 5 : -5))
            
            // Cute arrow
            if !isLowered {
                HStack(spacing: 0) {
                    Triangle()
                        .fill(Color.red)
                        .frame(width: 4, height: 4)
                        .rotationEffect(.degrees(90))
                    Rectangle()
                        .fill(Color.brown)
                        .frame(width: 12, height: 1.5)
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 3, height: 3)
                }
                .offset(x: -8)
                .rotationEffect(.degrees(isLowered ? 25 : -10))
            }
        }
        .offset(x: 20, y: isLowered ? 8 : -2)
    }
}

struct KidKrishnaView: View {
    let isTeaching: Bool
    @State private var eyeBlink = false
    @State private var auraEffect = false
    @State private var featherDance = false
    
    var body: some View {
        ZStack {
            // Cute divine aura
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.blue.opacity(auraEffect ? 0.4 : 0.2),
                            Color.purple.opacity(0.1),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 5,
                        endRadius: 35
                    )
                )
                .frame(width: 70, height: 70)
                .scaleEffect(auraEffect ? 1.2 : 1.0)
                .animation(.easeInOut(duration: 2.0).repeatForever(autoreverses: true), value: auraEffect)
            
            VStack(spacing: 3) {
                // Cute Krishna head
                KidKrishnaHeadView(isTeaching: isTeaching, eyeBlink: eyeBlink, featherDance: featherDance)
                
                // Small cute body
                KidKrishnaBodyView(isTeaching: isTeaching)
                
                // Flowing baby robes
                KidKrishnaRobesView()
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

struct KidKrishnaHeadView: View {
    let isTeaching: Bool
    let eyeBlink: Bool
    let featherDance: Bool
    
    var body: some View {
        ZStack {
            // Round cute face with blue tint
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.white]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 28, height: 28)
                .overlay(
                    Circle()
                        .stroke(Color.blue.opacity(0.5), lineWidth: 2)
                )
            
            // Cute peacock feather crown
            VStack {
                HStack(spacing: 1) {
                    ForEach(0..<5, id: \.self) { index in
                        Ellipse()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .frame(width: 3, height: 8)
                            .rotationEffect(.degrees(featherDance ? Double(index * 10) : Double(-index * 5)))
                    }
                }
                .offset(y: -22)
                Spacer()
            }
            
            // Big sparkling eyes
            HStack(spacing: 5) {
                // Left eye
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 6, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 3, height: 3)
                        // Sparkle in eye
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1, height: 1)
                            .offset(x: -0.5, y: -0.5)
                    }
                }
                
                // Right eye
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 6, height: eyeBlink ? 2 : 6)
                    if !eyeBlink {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 3, height: 3)
                        // Sparkle in eye
                        Circle()
                            .fill(Color.white)
                            .frame(width: 1, height: 1)
                            .offset(x: -0.5, y: -0.5)
                    }
                }
            }
            .offset(y: -3)
            
            // Always smiling
            Path { path in
                path.move(to: CGPoint(x: -6, y: 5))
                path.addQuadCurve(to: CGPoint(x: 6, y: 5), control: CGPoint(x: 0, y: 9))
            }
            .stroke(Color.blue, lineWidth: 1.5)
            
            // Divine mark on forehead (when teaching)
            if isTeaching {
                Ellipse()
                    .fill(Color.yellow)
                    .frame(width: 4, height: 6)
                    .offset(y: -8)
                    .opacity(0.8)
            }
            
            // Cute blush marks
            HStack(spacing: 16) {
                Circle()
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 4, height: 4)
                Circle()
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 4, height: 4)
            }
            .offset(y: 2)
        }
    }
}

struct KidKrishnaBodyView: View {
    let isTeaching: Bool
    
    var body: some View {
        VStack(spacing: 1) {
            // Cute divine vest
            RoundedRectangle(cornerRadius: 6)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow.opacity(0.8), Color.orange.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 16, height: 22)
                .overlay(
                    VStack(spacing: 2) {
                        Text("🕉️")
                            .font(.caption2)
                        HStack(spacing: 1) {
                            Circle().fill(Color.orange).frame(width: 2, height: 2)
                            Circle().fill(Color.yellow).frame(width: 2, height: 2)
                            Circle().fill(Color.orange).frame(width: 2, height: 2)
                        }
                    }
                )
            
            // Cute teaching arms
            if isTeaching {
                HStack(spacing: 20) {
                    // Left arm - blessing gesture
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.blue.opacity(0.4))
                        .frame(width: 2, height: 10)
                        .rotationEffect(.degrees(-45))
                    
                    // Right arm - pointing/explaining
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.blue.opacity(0.4))
                        .frame(width: 2, height: 10)
                        .rotationEffect(.degrees(30))
                }
                .offset(y: -8)
            }
        }
    }
}

struct KidKrishnaRobesView: View {
    @State private var robeFlow = false
    
    var body: some View {
        VStack(spacing: 2) {
            // Flowing cute robes
            Path { path in
                path.move(to: CGPoint(x: -10, y: 0))
                path.addQuadCurve(to: CGPoint(x: 10, y: 0), control: CGPoint(x: 0, y: robeFlow ? -3 : 3))
                path.addLine(to: CGPoint(x: 7, y: 18))
                path.addLine(to: CGPoint(x: -7, y: 18))
                path.closeSubpath()
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.yellow.opacity(0.7), Color.orange.opacity(0.5)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .animation(.easeInOut(duration: 2.5).repeatForever(autoreverses: true), value: robeFlow)
            
            // Cute little legs
            HStack(spacing: 3) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue.opacity(0.4))
                    .frame(width: 4, height: 15)
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue.opacity(0.4))
                    .frame(width: 4, height: 15)
            }
            
            // Cute divine feet
            HStack(spacing: 3) {
                Ellipse()
                    .fill(Color.yellow.opacity(0.8))
                    .frame(width: 5, height: 3)
                Ellipse()
                    .fill(Color.yellow.opacity(0.8))
                    .frame(width: 5, height: 3)
            }
        }
        .onAppear {
            robeFlow = true
        }
    }
}

// Helper shape for triangles
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

#Preview {
    VStack(spacing: 30) {
        Text("Kid Characters with Sun Rays")
            .font(.title)
            .fontWeight(.bold)
        
        KidArjunaKrishnaView(scene: "work_dilemma")
            .frame(height: 160)
            .background(Color(.systemGray6))
            .cornerRadius(16)
        
        HStack(spacing: 30) {
            VStack {
                KidArjunaView(isConflicted: true)
                Text("Worried Arjuna")
                    .font(.caption)
            }
            
            VStack {
                KidKrishnaView(isTeaching: true)
                Text("Teaching Krishna")
                    .font(.caption)
            }
            
            VStack {
                KidArjunaView(isConflicted: false)
                Text("Happy Arjuna")
                    .font(.caption)
            }
        }
        
        SunRaysView()
            .frame(width: 200, height: 200)
            .background(Color.black.opacity(0.1))
            .cornerRadius(100)
    }
    .padding()
}
