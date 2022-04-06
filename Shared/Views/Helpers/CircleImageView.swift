//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Piyush Porwal on 24/03/22.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: ModelData().landmarks[1].image)
    }
}
