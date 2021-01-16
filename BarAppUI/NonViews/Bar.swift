//
//  Bar.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Bar: Hashable, Codable, Identifiable  {
    var id: Int
    
    var name: String
    var population: Int
    var fpop: Int
    var distance: Double
   
    private var imageName: String
    var image: Image
    {
        Image(imageName)
    }
    
    var locationCoordinates: CLLocationCoordinate2D
    {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
