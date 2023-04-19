//
//  SwiftUIView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct HomeView: View {
    @Namespace var namespace
    @State var show = false
    @State var showStatusBar = true
    // We are going to store in the selectedID the ID of the opened card
    @State var selectedID = UUID()

    var body: some View {

        ZStack {

            ScrollView {
                // spacing manage all the space between columns and rows inside LazyVGrid
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300), spacing: 20)], spacing: 20) {
                    if !show {
                        cards
                    } else {
                        ForEach(courses) { course in
                            Rectangle()
                                .fill(Color("main"))
                                .frame(height: 300)
                                .cornerRadius(30)
                                .shadow(color: Color(.black), radius: 20, x: 0, y: 20)
                                .opacity(0.3)
                                .padding(.horizontal, 30)
                        }
                    }
                }
                // This padding is for the outside of the LazyVGrid
                .padding(.horizontal, 20)


            }

            // You need to use this out of the ScrollView otherwise you will get cut by ScrollView boundaries
            if show {
                detail
            }
        }
        // If you use the Color inside the ZStack it will break matchedGeometry
        .background(Color("main").ignoresSafeArea())
        .statusBar(hidden: !showStatusBar)
        .onChange(of: show) { newValue in
            withAnimation(.closeCard) {
                if newValue {
                    showStatusBar = false
                } else {
                    showStatusBar = true
                }
            }
        }
    }

    var cards: some View {
        ForEach(courses) { course in
            CourseItem(namespace: namespace, course: course, show: $show)
                .onTapGesture {
                    withAnimation(.openCard) {
                        show.toggle()
                        showStatusBar = false
                        // This is for storing the open card ID inside the property
                        selectedID = course.id
                    }
                }
                .accessibilityElement(children: .combine)
                .accessibilityAddTraits(.isButton)
                .accessibilityHidden(course.id == selectedID ? false : true)
        }
    }

    var detail: some View {
        ForEach(courses) { course in
            if course.id == selectedID {
                CourseView(namespace: namespace, course: course, show: $show)
                // In order to give an order of appearing/disappearing to the overlapping elements
                    .zIndex(1)
                // This is for assuring you that the fade is not played too late or too early
                    .transition(.asymmetric(insertion: .opacity.animation(.easeInOut(duration: 0.1)), removal: .opacity.animation(.easeInOut(duration: 0.3).delay(0.2))))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
