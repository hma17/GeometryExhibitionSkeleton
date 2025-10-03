//
//  translationsView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 9/20/25.
//

import SwiftUI

struct translationsView: View {
    @State private var isExpandedStepOne: Bool = false
    @State private var isExpandedStepTwo: Bool = false
    @State private var isExpandedStepThree: Bool = false
    @State private var isExpandedStepFour: Bool = false
    
    @State private var vertexOne: String = ""
    @State private var vertexTwo: String = ""
    @State private var vertexThree: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                translationsContentView
                Spacer()
            }
            .padding(24)
            .navigationTitle("Transformations")
        }
    }
        
    var translationsContentView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Translations: (sliding) the figure")
                .fontDesign(.serif)
                .italic()
                .bold()
            HStack(spacing: 8) {
                Spacer()
                Image(systemName: "righttriangle")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .foregroundStyle(.blue)
                Image(systemName: "arrow.right")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(x: 10)
                Image(systemName: "righttriangle")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .foregroundStyle(.orange)
                Spacer()
            }
            Text("How to perform a translation:")
                DisclosureGroup("1. Identify the Original Figure", isExpanded: $isExpandedStepOne) {
                    Text("You'll start with a preimage, or original figure, which can be a point, a line, or a shape.")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                DisclosureGroup("2. Apply the Translation Rule", isExpanded: $isExpandedStepTwo) {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .top) {
                            Text("•")
                                .font(.body)
                            Text("Horizontal Movement: to move right, you add to the x-coordinate and to move left, you subtract from the x-coordinate")
                        }
                        HStack(alignment: .top) {
                            Text("•")
                                .font(.body)
                            Text("Vertical Movement: to move up, you add to the y-coordinate and to move down, you subtract from the y-coordinate")
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                }
                DisclosureGroup("3. Plot the new points", isExpanded: $isExpandedStepThree) {
                    Text("Apply the rule to each vertex of the original figure to find the coordinates of the new, translated figure, called the image. ")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                DisclosureGroup("4. Draw the Image", isExpanded: $isExpandedStepFour) {
                    Text("Connect the new points to form the translated shape.")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
            Text("Translate a triangle for me!")
            VStack(spacing: 16) {
                TextField("(?,?)", text: $vertexOne)
                TextField("(?,?)", text: $vertexTwo)
                TextField("(?,?)", text: $vertexThree)
                
                Text("Translate the triangle 3 units up and 2 units to the left.")
                Button("Calculate") {
                    //TODO
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    translationsView()
}
