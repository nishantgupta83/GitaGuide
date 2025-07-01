
import SwiftUI

struct BackgroundContainer<Content: View>: View {
    @ViewBuilder let content: () -> Content

    var body: some View {
        ZStack {
            RandomBackgroundView()
                .ignoresSafeArea()
            
            content()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
        }
    }
}
