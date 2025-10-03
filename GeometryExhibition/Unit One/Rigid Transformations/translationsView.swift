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

    @State private var horizontalShift: String = ""
    @State private var verticalShift: String = ""

    @State private var translatedVertices: [String] = []

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
                        Text("Horizontal Movement: to move right, add to x. To move left, subtract from x.")
                    }
                    HStack(alignment: .top) {
                        Text("•")
                        Text("Vertical Movement: to move up, add to y. To move down, subtract from y.")
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            }

            DisclosureGroup("3. Plot the new points", isExpanded: $isExpandedStepThree) {
                Text("Apply the rule to each vertex of the original figure to find the coordinates of the new, translated figure, called the image.")
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

            VStack(spacing: 12) {
                TextField("Vertex 1 (e.g., (1,2))", text: $vertexOne)
                    .textFieldStyle(.roundedBorder)
                TextField("Vertex 2 (e.g., (3,4))", text: $vertexTwo)
                    .textFieldStyle(.roundedBorder)
                TextField("Vertex 3 (e.g., (5,6))", text: $vertexThree)
                    .textFieldStyle(.roundedBorder)

                HStack {
                    Text("Translate the triangle")
                    TextField("Y (up/down)", text: $verticalShift)
                        .frame(width: 50)
                        .textFieldStyle(.roundedBorder)
                    Text("units up and")
                    TextField("X (left/right)", text: $horizontalShift)
                        .frame(width: 50)
                        .textFieldStyle(.roundedBorder)
                    Text("units to the left.")
                }
                .font(.subheadline)

                Button("Calculate") {
                    calculateTranslation()
                }
                .buttonStyle(.bordered)
            }

            if !translatedVertices.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(translatedVertices, id: \.self) { result in
                        Text(result)
                            .font(.body)
                            .padding(6)
                            .background(Color.yellow.opacity(0.2))
                            .cornerRadius(6)
                    }
                }
                .padding(.top)
            }
        }
    }

    func calculateTranslation() {
        translatedVertices.removeAll()

        let inputs = [vertexOne, vertexTwo, vertexThree]
        guard let dx = Int(horizontalShift),
              let dy = Int(verticalShift) else {
            translatedVertices.append("❌ Invalid translation values.")
            return
        }

        for input in inputs {
            if let original = parseVertex(input) {
                let newX = original.x - dx // moving left = subtract from x
                let newY = original.y + dy // moving up = add to y
                translatedVertices.append("(\(original.x),\(original.y)) → (\(newX),\(newY))")
            } else {
                translatedVertices.append("❌ Invalid format: \(input)")
            }
        }
    }

    func parseVertex(_ input: String) -> (x: Int, y: Int)? {
        // Remove parentheses and whitespace
        let cleaned = input
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: " ", with: "")
        
        let parts = cleaned.split(separator: ",")
        if parts.count == 2,
           let x = Int(parts[0]),
           let y = Int(parts[1]) {
            return (x, y)
        }
        return nil
    }
}

#Preview {
    translationsView()
}
