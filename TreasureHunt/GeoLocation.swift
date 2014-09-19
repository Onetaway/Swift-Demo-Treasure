//
//  GeoLocation.swift
//  TreasureHunt
//
//  Created by sanlen on 9/19/14.
//  Copyright (c) 2014 Razeware. All rights reserved.
//

import Foundation
import MapKit

struct GeoLocation {
    var latitude: Double
    var longitude: Double
}

extension GeoLocation {
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(self.latitude, self.longitude)
    }
    
    var mapPoint: MKMapPoint {
        
        return MKMapPointForCoordinate(self.coordinate)
    }
}