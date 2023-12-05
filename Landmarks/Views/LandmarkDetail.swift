//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by User on 13/11/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
                    .padding(.bottom, 5)
                    .padding(.top, 20)
                HStack {
                    Text(landmark.park)
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.mint)
                    Spacer()
                    Text(landmark.state)
                        .font(.title3)
                        .foregroundColor(.teal)
                }
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.subheadline)
                    .foregroundColor(.brown)
                Text(landmark.description)
                    .font(.subheadline)
                    .foregroundColor(.brown)
                Divider()
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
