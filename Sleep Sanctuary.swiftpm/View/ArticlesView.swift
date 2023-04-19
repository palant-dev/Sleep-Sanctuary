//
//  ArticlesView.swift
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
            .mask(RoundedRectangle(cornerRadius: viewState.width / 3, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 30, x: 0, y: 10)
            .scaleEffect(viewState.width / -500 + 1)
            .background(.black.opacity(viewState.width / 500))
            .background(.ultraThinMaterial)
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
            let scrollY = proxy.frame(in: .global).minY
            VStack {
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: scrollY > 0 ? 500 + scrollY : 500)
            .foregroundColor(.black)
            .background(
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
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
                    .offset(y: scrollY > 0 ? -scrollY : 0)
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
    
    var drag: some Gesture {
        DragGesture(minimumDistance: 30, coordinateSpace: .local)
            .onChanged { value in
                guard value.translation.width > 0 else { return }
                
                if value.startLocation.x < 100 {
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
