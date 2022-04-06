//
//  Badge.swift
//  Landmarks
//
//  Created by Piyush Porwal on 28/03/22.
//

import SwiftUI

struct Badge: View {
    var badgeSymbol: some View {
        ForEach(0..<8) { index in
            RoatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360.0)
            
        }.opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBacground()
            
            GeometryReader{ geometry in
                badgeSymbol
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width/2.0, y: (3.0/4.0) * geometry.size.height)
                
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
