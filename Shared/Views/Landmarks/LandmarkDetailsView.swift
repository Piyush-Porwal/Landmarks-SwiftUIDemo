//
//  LandmarkDetailsView.swift
//  Landmarks
//
//  Created by Piyush Porwal on 24/03/22.
//

import SwiftUI

struct LandmarkDetailsView: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    var body: some View {
        ScrollView {
            
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                
            
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                        
                    
                    Spacer()
                
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }.padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailsView(landmark: ModelData().landmarks[0])
    }
}
