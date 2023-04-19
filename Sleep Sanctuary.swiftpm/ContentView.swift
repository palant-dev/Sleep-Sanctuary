import SwiftUI

struct ContentView: View {
    @State var shouldShowOnBoarding = false
    var body: some View {
        VStack {
            HomeView()
        }
        .fullScreenCover(isPresented: $shouldShowOnBoarding) {
            OnboardingView(shouldShowOnBoarding: $shouldShowOnBoarding)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
