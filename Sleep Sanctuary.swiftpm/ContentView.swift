import SwiftUI

struct ContentView: View {
    @State var shouldShowOnBoarding = true
    var body: some View {
        VStack {
            HomeView()
        }
        .fullScreenCover(isPresented: $shouldShowOnBoarding) {
            OnboardingView(shouldShowOnBoarding: $shouldShowOnBoarding)
                .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
