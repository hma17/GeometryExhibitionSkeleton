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
                NavigationLink("Unit 1") {
                    UnitOneView()
                }
                NavigationLink("Unit 2") {
                    UnitTwoView()
                }
                NavigationLink("Unit 3") {
                    //TODO: Navigate to Unit 3 view
                }
                NavigationLink("Unit 4") {
                    //TODO: Navigate to Unit 4 view
                }
                NavigationLink("Unit 5") {
                    //TODO: Navigate to Unit 5 view
                }
                NavigationLink("Unit 6") {
                    //TODO: Navigate to Unit 6 view
                }
                NavigationLink("Unit 7") {
                    //TODO: Navigate to Unit 7 view
                }
                NavigationLink("Unit 8") {
                    //TODO: Navigate to Unit 3 view
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
