import SwiftUI


@main
struct GitaGuideApp: App {
    @StateObject private var scenariosManager = ScenariosManager()
    @StateObject private var quotesManager = WisdomQuotesManager()
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var showingLoadingScreen = true
    @Environment(\.colorScheme) var systemColorScheme


    var body: some Scene {
        WindowGroup {
            ZStack {
                BackgroundContainer {
                    if !showingLoadingScreen {
                        ContentView()
                            .environmentObject(scenariosManager)
                            .environmentObject(quotesManager)
                            .environmentObject(localizationManager)
                    }
                }
                
                if showingLoadingScreen {
                    LoadingScreenView()
                        .transition(.opacity)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.8) {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        showingLoadingScreen = false
                    }
                }
            }
            .environment(\.colorScheme, systemColorScheme == .light ? .dark : .dark)
        }
    }
}
