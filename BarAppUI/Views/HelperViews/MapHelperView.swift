//
//  MapHelperView.swift
//  BarAppUI
//
//  Created by Steven Drake on 1/4/21.
//

import SwiftUI
import MapKit


struct MapHelperView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        VStack
        {
            Map(coordinateRegion: $region)
                .onAppear()
                {
                    setRegion(coordinate)
                }
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D)
    {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapHelperView_Previews: PreviewProvider {
    static var previews: some View {
        MapHelperView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
