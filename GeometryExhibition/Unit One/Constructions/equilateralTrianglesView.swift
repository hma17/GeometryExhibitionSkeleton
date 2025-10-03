//
//  equilateralTrianglesView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 10/2/25.
//

import SwiftUI

struct equilateralTrianglesView: View {
    
    @State private var sideOne: String = ""
    @State private var sideTwo: String = ""
    @State private var sideThree: String = ""
    
    @State private var isEquilateral: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "triangle")
                .resizable()
                .frame(width: 100, height: 100)
            TextField("Input Side One", text: $sideOne)
            TextField("Input Side Two", text: $sideTwo)
            TextField("Input Side Three", text: $sideThree)
            
            Button("Calculate") {
               isItEquilateral(sideOne: sideOne, sideTwo: sideTwo, sideThree: sideThree)
            }
            Text(isEquilateral)
                
        }.padding()
    }
    
    private func isItEquilateral(sideOne: String, sideTwo: String, sideThree: String) {
        if sideOne == sideTwo && sideTwo == sideThree {
            isEquilateral = "yes"
        } else {
            isEquilateral = "no"
        }
    }
}

#Preview {
    equilateralTrianglesView()
}
