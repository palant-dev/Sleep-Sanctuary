//
//  SwiftUIView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct ArticlesView: View {
    var namespace: Namespace.ID
    var article: Articles = articles[0]
    @Binding var show: Bool
    @State var appear = [false, false, false]
    @State var viewState: CGSize = .zero
    @State var isDraggable = true


    var body: some View {
        ZStack {
            ScrollView {
                cover

                content
                    .offset(y: 80)
                    .padding(.bottom, 200)
                    .opacity(appear[2] ? 1 : 0)
            }
            .background(Color("background-secondary"))
            // This mask and shadow modifier are shown when draggin to dismiss
            .mask(RoundedRectangle(cornerRadius: viewState.width / 3, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 30, x: 0, y: 10)
            .scaleEffect(viewState.width / -500 + 1)
            .background(.black.opacity(viewState.width / 500))
            .background(.ultraThinMaterial)
            // Need to put here the gesture because otherwise Safe Area will give problem
            .gesture(isDraggable ? drag : nil )
            .ignoresSafeArea()

            button
        }
        .onAppear{
            fadeIn()
        }
        .onChange(of: show) { _ in
            fadeOut()
        }
    }

    var cover: some View {
        GeometryReader { proxy in
            // For the scrolling part of the paralax effect we need to know where we are while we scroll and for convenience we can store the position in st prop
            let scrollY = proxy.frame(in: .global).minY

            VStack {
                Spacer()
            }
            // We use this .frame() because now the spacer will grant the maximum space only vertically, and the text is now inside the overlay modifier so it will not grant the maximum width anymore
            .frame(maxWidth: .infinity)
            // Need to add a condition when scrolling positively to not enbale the parallax
            .frame(height: scrollY > 0 ? 500 + scrollY : 500)
            .foregroundColor(.black)
            .background(
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // This padding and frame are added to avoid screen issue on ipad
                    .padding(20)
                    .frame(maxWidth: 500)
                    .matchedGeometryEffect(id: "image\(article.id)", in: namespace)
                    .offset(y: scrollY > 0 ? scrollY * -0.8 : 0)
                    .accessibilityLabel("Description for accessibility for image")
            )
            .background(
                Image(article.background)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "background\(article.id)", in: namespace)
                // We need to add a negative offset managed by geometry reader to not let the background move when scrolling
                    .offset(y: scrollY > 0 ? -scrollY : 0)
                // If you want to zoom the background image while pulling (+1 needed because scale start from 1 and not 0)
                    .scaleEffect( scrollY > 0 ? scrollY / 1000 + 1 : 1)
                    .blur(radius: scrollY / 10)
                    .accessibilityHidden(true)
            )
            .mask {
                RoundedRectangle(cornerRadius: appear[0] ? 0 : 30, style: .continuous)
                    .matchedGeometryEffect(id: "mask\(article.id)", in: namespace)
                    .offset(y: scrollY > 0 ? -scrollY : 0)
            }
            .overlay(
                overlayContent
                    .offset(y: scrollY > 0 ? scrollY * -0.6 : 0)
            )
        }
        .frame(height: 500)
    }

    var button: some View {
        Button {
            withAnimation(.closeCard) {
                show.toggle()
            }
        } label: {
            Image(systemName: "xmark")
                .font(.body.weight(.bold))
                .foregroundColor(.secondary)
                .padding(8)
                .background(.ultraThinMaterial, in: Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        .padding(20)
        .ignoresSafeArea()
    }

    var content: some View {
        Text(article.articleBody)
            .padding(20)
    }

    var overlayContent: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(article.title)
                .font(.largeTitle.weight(.bold))
                .matchedGeometryEffect(id: "title\(article.id)", in: namespace)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(article.subtitle.uppercased())
                .font(.footnote.weight(.semibold))
                .matchedGeometryEffect(id: "subtitle\(article.id)", in: namespace)

            Text(article.text)
                .font(.footnote)
                .matchedGeometryEffect(id: "text\(article.id)", in: namespace)

        }
        .padding(20)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(
                    RoundedRectangle(cornerRadius: 30, style: .continuous))
                .matchedGeometryEffect(id: "blur\(article.id)", in: namespace)
        )
        .accessibilityElement(children: .combine)
        .offset(y: 250)
        .padding(20)
    }

    //Attention here, because you need Gesture protocol and not View
    var drag: some Gesture {
        // minimumDistance and coordinateSpace are a fix for a bug that lock the screen midway during the gesture
        DragGesture(minimumDistance: 30, coordinateSpace: .local)
            .onChanged { value in
                // This guard prevent reverse zoom when dragging right
                guard value.translation.width > 0 else { return }

                if value.startLocation.x < 100 {
                    // This withAnimation is for solving a bug breaking the UI while dragging
                    withAnimation(.closeCard) {
                        viewState = value.translation
                    }
                }

                if viewState.width > 120 {
                    close()
                }
            }
            .onEnded { value in
                if viewState.width > 80 {
                    close()
                    // This is used because inside close() we already have this
                } else {
                    withAnimation(.closeCard) {
                        viewState = .zero
                    }
                }
            }
    }

    func fadeIn() {
        withAnimation(.easeOut.delay(0.3)) {
            appear[0] = true
        }
        withAnimation(.easeOut.delay(0.4)) {
            appear[1] = true
        }
        withAnimation(.easeOut.delay(0.5)) {
            appear[2] = true
        }
    }

    func fadeOut() {
        withAnimation(.easeIn(duration: 0.1)) {
            appear[0] = false
            appear[1] = false
            appear[2] = false
        }
    }

    func close() {
            withAnimation(.closeCard.delay(0.1)) {
                show.toggle()
            }

        withAnimation(.closeCard) {
            viewState = .zero
        }

        isDraggable = false
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        ArticlesView(namespace: namespace, show: .constant(true))
    }
}
