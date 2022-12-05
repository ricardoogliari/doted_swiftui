//
//  LocationManager.swift
//  doted_swift
//
//  Created by Ricardo on 27/11/22.
//

import Foundation
import CoreLocation
import Combine
import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    @Published var region: MKCoordinateRegion {
        willSet { objectWillChange.send() }
    }

    @Published var status: CLAuthorizationStatus? {
        willSet { objectWillChange.send() }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.first?.coordinate
        if let safeLocation = location {
            region = MKCoordinateRegion(
                center: safeLocation,
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
            
            self.locationManager.stopUpdatingLocation()
        }
        
    }

    override init() {
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 51.507222,
                longitude: -0.1275
            ),
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        )
        
        super.init()

        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        //self.locationManager.requestLocation()
        
    }
    
}
