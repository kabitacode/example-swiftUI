//
//  CircleImage.swift
//  Landmarks
//
//  Created by Me on 19/09/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ImageExample")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .frame(width: 200, height: 100)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
