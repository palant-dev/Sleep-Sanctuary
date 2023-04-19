//
//  PageView.swift
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
        GeometryReader { geometry in
            if showsDismissButton == false {
                HStack() {
                    Spacer()
                    Button {
                        shouldShowOnBoarding.toggle()
                    } label: {
                        Text("Skip >>")
                            .font(.title3)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color("secondary-light-blue"))
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            VStack(alignment: .center, spacing: 40) {
                Text(title)
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)


                Text(subtitle)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)

                if showsDismissButton == true {
                    Button {
                        shouldShowOnBoarding.toggle()
                    } label: {
                        Text("Access the sanctuary")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("secondary-light-blue"))
                            .cornerRadius(20)
                    }

                }
            }
            .offset(y: geometry.size.height/1.8)
        }
        .background(
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(title: "Awareness is the solution", subtitle: "Inside the Sleep Sanctuary you will find fragments of knowledge lost in time and space by the humanity. In less then 30 minutes of reading you can radically change your life." , imageName: "OB1", showsDismissButton: true, shouldShowOnBoarding: .constant(true))
    }
}
