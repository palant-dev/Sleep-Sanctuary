//
//  HomeView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct HomeView: View {
    @Namespace var namespace
    @State var show = false
    @State var showStatusBar = true
    @State var selectedID = UUID()
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300), spacing: 20)], spacing: 20) {
                    if !show {
                        cards
                    } else {
                        ForEach(articles) { course in
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
                .padding(.horizontal, 20)
            }
            if show {
                detail
            }
        }
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
        ForEach(articles) { course in
            ArticlesItem(namespace: namespace, article: course, show: $show)
                .onTapGesture {
                    withAnimation(.openCard) {
                        show.toggle()
                        showStatusBar = false
                        selectedID = course.id
                    }
                }
                .accessibilityElement(children: .combine)
                .accessibilityAddTraits(.isButton)
                .accessibilityHidden(course.id == selectedID ? false : true)
        }
    }
    
    var detail: some View {
        ForEach(articles) { course in
            if course.id == selectedID {
                ArticlesView(namespace: namespace, article: course, show: $show)
                    .zIndex(1)
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
