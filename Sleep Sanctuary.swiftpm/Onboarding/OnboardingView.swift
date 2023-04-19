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
                title: "Welcome to Sleep Sanctuary ",
                subtitle: "This app talks about the curious case of human beings that they deliberately deprive themselves of the most vital aspect of their health: sleep.",
                imageName: "OB1",
                showsDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )

            PageView(
                title: "The silent epidemic",
                subtitle: "The World Health Organization (WHO) has declared a sleep loss epidemic in industrialized nations. A century ago, 2% of Americans slept less then 6 hours. Today, almost 30% of American adults do.",
                imageName: "OB2",
                showsDismissButton: false,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )

            PageView(
                title: "Awareness is the solution",
                subtitle: "Inside the Sleep Sanctuary you will find fragments of knowledge lost in time and space by the humanity. In less then 30 minutes of reading you can radically change your life.",
                imageName: "OB3",
                showsDismissButton: true,
                shouldShowOnBoarding: $shouldShowOnBoarding
            )
        }
        .background(Color("background-ob"))
        .tabViewStyle(PageTabViewStyle())
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(shouldShowOnBoarding: .constant(true))
    }
}

