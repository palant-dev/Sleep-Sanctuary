//
//  SwiftUIView.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//
import SwiftUI

struct CourseItem: View {

    // This is the only way to make namespace required when we are going to call the component, remember to add "@Namespace static var namespace" inside the preview
    var namespace: Namespace.ID
    var course: Course = courses[0]
    @Binding var show: Bool

    // This is for reading accessiblity dynamicTypeSize settings
    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    var body: some View {
        VStack {
            Spacer()

            VStack(alignment: .leading, spacing: 12) {
                Text(course.title)
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title\(course.id)", in: namespace)
                    .dynamicTypeSize(.large)
                .frame(maxWidth: .infinity, alignment: .leading)

                Text(course.subtitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle\(course.id)", in: namespace)

                Text(course.text)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .matchedGeometryEffect(id: "text\(course.id)", in: namespace)
                    .lineLimit(dynamicTypeSize > .large ? 1 : 2)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur\(course.id)", in: namespace))
        }
        .foregroundColor(.white)
        .background(
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
                .matchedGeometryEffect(id: "image\(course.id)", in: namespace)
                .accessibilityLabel("Description for accessibility for image")
        )
        .background(
            Image(course.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background\(course.id)", in: namespace)
        )
        .mask {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask\(course.id)", in: namespace)
        }
        .frame(height: 300)
    }
}

struct CourseItem_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        CourseItem(namespace: namespace, show: .constant(true))
    }
}

