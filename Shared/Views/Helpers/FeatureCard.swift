//
//  FeatureCard.swift
//  Landmarks (iOS)
//
//  Created by Piyush Porwal on 31/03/22.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featuredImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay{
            }
    }
}

//struct TextOverlay: View {
//    var landmark: Landmark
//
//    var gradient: LinearGradient {
//        .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]), startPoint: .bottom, endPoint:.center)
//    }
//}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
