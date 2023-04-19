//
//  SwiftUIView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct PageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnBoarding: Bool

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()

            Text(title)
                .font(.system(size: 32))
                .padding()

            Text(subtitle)
                .font(.system(size: 24))
                .foregroundColor(Color(.secondaryLabel))
                .padding()

            if showsDismissButton == true {
                Button {
                    shouldShowOnBoarding.toggle()
                } label: {
                    Text("Get Started")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(6)
                }

            }
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(title: "example", subtitle: "example" , imageName: "bell", showsDismissButton: true, shouldShowOnBoarding: .constant(true))
    }
}
