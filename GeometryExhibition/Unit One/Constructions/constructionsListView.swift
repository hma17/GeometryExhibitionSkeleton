//
//  constructionsListView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 10/2/25.
//

import SwiftUI

struct constructionsListView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Perpindicular Bisector") {
                    perpendicularBisectorsView()
                }
                NavigationLink("Equilateral Triangle") {
                    equilateralTrianglesView()
                }
                NavigationLink("Angle Bisectors") {
                    angleBisectorsView()
                }
                NavigationLink("Squares") {
                    squaresView()
                }
            }
        }
    }
}

#Preview {
    constructionsListView()
}
