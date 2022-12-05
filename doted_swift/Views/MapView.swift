//
//  FirstView.swift
//  doted_swift
//
//  Created by Ricardo on 26/11/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        return Map(
            coordinateRegion: $locationManager.region,
            showsUserLocation: true
        )
    }
        
}

struct MapView_Preview: PreviewProvider {
    
    static var previews: some View {
        MapView().environmentObject(LocationManager())
    }
    
}
