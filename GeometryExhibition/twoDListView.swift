//
//  2DListView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 9/19/25.
//

import SwiftUI

struct twoDListView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink("Lines") {
                        //TODO
                    }
                    NavigationLink("Line segments") {
                        //TODO
                    }
                    NavigationLink("Rays") {
                        //TODO
                    }
                    NavigationLink("Angles") {
                        //TODO
                    }
                    NavigationLink("Transformations") {
                        transformationsView()
                    }
                }
                NavigationLink("Triangles") {
                    triangleContentView()
                }
            }
            .listStyle(.grouped)
        }
    }
}

#Preview {
    twoDListView()
}
