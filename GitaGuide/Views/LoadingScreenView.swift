/*
 
 VERSION 2.0 with some issues
 -- NISHANT
 
import SwiftUI

struct LoadingScreenView: View {
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var isLoading = true
    @State private var logoScale: CGFloat = 0.8
    @State private var logoOpacity: Double = 0.0
    @State private var textOpacity: Double = 0.0
    @State private var imageScale: CGFloat = 1.1
    
    var body: some View {
        ZStack {
            // Background image with zoom
            Image("bg_14")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(imageScale)
                .animation(.easeInOut(duration: 3.0), value: imageScale)
                .ignoresSafeArea()
            
            // Dark gradient overlay
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.6),
                    Color.black.opacity(0.3),
                    Color.black.opacity(0.6)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            // Content
            VStack(spacing: 24) {
                Spacer()
                
                VStack(spacing: 16) {
                    Image(systemName: "music.note")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .opacity(0) // Placeholder; hide or replace with logo
                    
                    Text("gita_guide".localized)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .opacity(textOpacity)
                    
                    Text("ancient_wisdom_modern_dilemmas".localized)
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .opacity(textOpacity)
                }
                
                Spacer()
                
                VStack(spacing: 12) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.2)
                    
                    Text("loading_wisdom".localized)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
                .opacity(textOpacity)
                .padding(.bottom, 50)
            }
            .padding()
        }
        .onAppear {
            startLoadingAnimation()
        }
        .onTapGesture {
            completeLoading()
        }
    }
    
    private func startLoadingAnimation() {
        withAnimation(.easeInOut(duration: 3.0)) {
            imageScale = 1.0
        }
        withAnimation(.spring(response: 0.8, dampingFraction: 0.6).delay(0.5)) {
            logoOpacity = 1.0
            logoScale = 1.0
        }
        withAnimation(.easeInOut(duration: 0.8).delay(1.0)) {
            textOpacity = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            completeLoading()
        }
    }
    
    private func completeLoading() {
        withAnimation(.easeInOut(duration: 0.5)) {
            isLoading = false
        }
    }
}

#Preview {
    LoadingScreenView()
        .environmentObject(LocalizationManager.shared)
}

*/

import SwiftUI

struct LoadingScreenView: View {
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var logoOpacity: Double = 0.0
    @State private var textOpacity: Double = 0.0
    @State private var imageScale: CGFloat = 1.1

    var body: some View {
        ZStack {
            // Zooming background image
            Image("bg_15")
                .resizable()
                .scaledToFill()
                .scaleEffect(imageScale)
                .animation(.easeInOut(duration: 3.0), value: imageScale)
                .ignoresSafeArea()
            
            // Dark overlay for text visibility
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.6),
                    Color.black.opacity(0.3),
                    Color.black.opacity(0.6)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                VStack(spacing: 16) {
                 //   Image(systemName: "music.note")
                  
                    /*Image(systemName: "apple.meditate.square.stack.fill")
                               .font(.system(size: 100))
                               .symbolEffect(.drawOn.individually, options: .nonRepeating)
                               .opacity(logoOpacity)
                    */
                    
                    Image( systemName: "sun.max" )
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .opacity(logoOpacity)

                  Text("gita_guide".localized)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .opacity(textOpacity)
                    

                    Text("ancient_wisdom_modern_dilemmas".localized)
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .opacity(textOpacity)
                }

                Spacer()

                VStack(spacing: 12) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.2)

                    Text("loading_wisdom".localized)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                }
                .opacity(textOpacity)
                .padding(.bottom, 40)
            }
            .padding()
        }
        .onAppear {
            startAnimations()
        }
    }

    private func startAnimations() {
        withAnimation(.easeInOut(duration: 3.0)) {
            imageScale = 1.0
        }
        withAnimation(.easeOut(duration: 1.0).delay(0.5)) {
            logoOpacity = 1.0
        }
        withAnimation(.easeIn(duration: 1.0).delay(1.0)) {
            textOpacity = 1.0
        }
    }
}

#Preview {
    LoadingScreenView()
}

