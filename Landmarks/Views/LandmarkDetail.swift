//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by User on 13/11/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Learn SwiftUI")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
                    .padding(.bottom, 5)
                    .padding(.top, 20)
                HStack {
                    Text("Excellent")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.mint)
                    Spacer()
                    Text("amazing!")
                        .font(.title3)
                        .foregroundColor(.teal)
                }
                
                Divider()
                Text("About Turtle Rock")
                    .font(.subheadline)
                    .foregroundColor(.brown)
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(.brown)
                Divider()
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail()
}
