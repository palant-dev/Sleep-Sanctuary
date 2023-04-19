//
//  ArticlesView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//
import SwiftUI

struct ArticlesItem: View {

    // This is the only way to make namespace required when we are going to call the component, remember to add "@Namespace static var namespace" inside the preview
    var namespace: Namespace.ID
    var article: Articles = articles[0]
    @Binding var show: Bool

    // This is for reading accessiblity dynamicTypeSize settings
    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    var body: some View {
        VStack {
            Spacer()

            VStack(alignment: .leading, spacing: 12) {
                Text(article.title)
                    .font(.title.weight(.bold))
                    .matchedGeometryEffect(id: "title\(article.id)", in: namespace)
                    .dynamicTypeSize(.large)
                .frame(maxWidth: .infinity, alignment: .leading)

                Text(article.subtitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle\(article.id)", in: namespace)

                Text(article.text)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .matchedGeometryEffect(id: "text\(article.id)", in: namespace)
                    .lineLimit(dynamicTypeSize > .large ? 1 : 2)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur\(article.id)", in: namespace))
        }
        .foregroundColor(.white)
        .background(
            Image(article.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
                .matchedGeometryEffect(id: "image\(article.id)", in: namespace)
                .accessibilityLabel("Description for accessibility for image")
        )
        .background(
            Image(article.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background\(article.id)", in: namespace)
        )
        .mask {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask\(article.id)", in: namespace)
        }
        .frame(height: 300)
        .shadow(color: .black.opacity(0.5), radius: 8, x: 4, y: 4)
    }
    }


struct ArticlesItem_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        ArticlesItem(namespace: namespace, show: .constant(true))
    }
}

