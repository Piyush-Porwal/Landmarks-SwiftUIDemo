//
//  RoatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Piyush Porwal on 28/03/22.
//

import SwiftUI

struct RoatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RoatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RoatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
