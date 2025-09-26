//
//  triangleContentView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 9/19/25.
//

import SwiftUI

struct triangleContentView: View {
    @State private var sideOne: String = ""
    @State private var sideTwo: String = ""
    @State private var sideThree: String = ""
    @State private var triangleType: String = ""

    var body: some View {
        VStack(spacing: 16) {
            content
            triangleTypeView
          
        }
        .navigationTitle("Triangles")
    }
        
    var content: some View {
        Text("Content about triangles")
    }
    
    var triangleTypeView: some View {
        VStack(spacing: 16) {
            VStack {
                TextField("Length of side one", text: $sideOne)
                TextField("Length of side two", text: $sideTwo)
                TextField("Length of side three", text: $sideThree)
            }
            Button("Calculate") {
                calculateTriangleType()
            }
            .buttonStyle(.bordered)
            Text("I am \(triangleType)")
        }
        .padding()
        
    }
    
    private func calculateTriangleType() {
        // Convert strings to integers, return "not possible" if conversion fails
        guard let side1 = Int(sideOne),
              let side2 = Int(sideTwo),
              let side3 = Int(sideThree) else {
            triangleType = "not possible"
            return
        }
        
        // Check if the sides can form a valid triangle (triangle inequality theorem)
        if side1 + side2 <= side3 ||
           side1 + side3 <= side2 ||
           side2 + side3 <= side1 ||
           side1 <= 0 || side2 <= 0 || side3 <= 0 {
            triangleType = "not possible"
            return
        }
        
        // Check triangle types
        if side1 == side2 && side2 == side3 {
            triangleType = "an Equilateral triangle"
        } else if side1 == side2 || side1 == side3 || side2 == side3 {
            triangleType = "an Isosceles triangle"
        } else {
            triangleType = "a Scalene triangle"
        }
    }
}

#Preview {
    triangleContentView()
}
