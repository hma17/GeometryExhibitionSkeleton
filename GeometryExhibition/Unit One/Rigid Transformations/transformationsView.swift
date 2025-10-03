//
//  transformationsView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 10/2/25.
//

import SwiftUI

struct transformationsView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Transalations") {
                    translationsView()
                }
                NavigationLink("Reflections") {
                    reflectionsView() 
                }
            }
        }
    }
}

#Preview {
    transformationsView()
}
