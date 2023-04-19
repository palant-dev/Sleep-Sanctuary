//
//  SwiftUIView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var shouldShowOnBoarding: Bool
    var body: some View {
        TabView {
            PageView(
                title: "Push Notifications",
                subtitle: "Enable notifications to stay up to date with friends.",
                imageName: "bell",
                showsDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )

            PageView(
                title: "Bookmarks",
                subtitle: "Save your favorite pieces of content.",
                imageName: "bookmark",
                showsDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )

            PageView(
                title: "Flights",
                subtitle: "Book flights to the places you want to go",
                imageName: "airplane",
                showsDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )

            PageView(
                title: "Home",
                subtitle: "Go home wherever you might be",
                imageName: "house",
                showsDismissButton: true,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(shouldShowOnBoarding: .constant(true))
    }
}

