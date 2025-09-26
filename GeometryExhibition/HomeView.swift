//
//  ContentView.swift
//  GeometryExhibition
//
//  Created by Huda Aldadah on 9/19/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            List {
                NavigationLink("2-Dimensional Figures") {
                    twoDListView()
                }
                NavigationLink("3-Dimensional Figures") {
                    threeDListView()
                }
            }
            .padding()
            .navigationTitle("Geometry Exhibition Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
