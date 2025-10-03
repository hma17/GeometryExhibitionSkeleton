//
//  UnitOneView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 9/19/25.
//

import SwiftUI

struct UnitOneView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Constructions") {
                    constructionsListView()
                }
                NavigationLink("Rigid Transformations") {
                    transformationsView()
                }
                NavigationLink("Symmetry") {
                    symmetryView()
                }
                NavigationLink("Angles") {
                   anglesView()
                }
            }
        }
    }
}
    
#Preview {
    UnitOneView()
}
