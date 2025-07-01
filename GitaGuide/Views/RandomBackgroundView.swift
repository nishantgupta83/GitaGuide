import SwiftUI

struct RandomBackgroundView: View {
    private let imageNames = (1...15).map { "bg_\($0)" }
    private var selectedImage: String {
        imageNames.randomElement() ?? "bg_1"
    }

    var body: some View {
        Image(selectedImage)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .opacity(0.06)
            .transition(.opacity)
    }
}
