//
//  MapView.swift
//  KCM_test
//
//  Created by Eric Yang on 8/04/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    //follow the current location of the user
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    
    //initializing the map
    @State private var region = MKCoordinateRegion(
        
        //center location of the map when first loaded
        center: CLLocationCoordinate2D(latitude: 34.02209743127725, longitude: -118.28424189401113),
        
        //range of the map when first loaded
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    
    //adding location annotations
    init() {
        
        //struct defining a Location object
        struct Location {
            let title: String
            let latitude: Double
            let longitude: Double
        }
        
        //array of location objects
        let locations = [
            Location(title: "FA", latitude: 34.02188261336583, longitude: -118.28473888744163),
            Location(title: "Leavey", latitude: 34.021713799868, longitude: -118.2827930474238),
            Location(title: "GM", latitude: 34.02224481313162, longitude: -118.28425962797209),
            Location(title: "Dulce", latitude: 34.025378084995985, longitude: -118.2853024876186),
            Location(title: "MNP", latitude: 34.02131778881269, longitude: -118.28443474354447)
        ]
        
        //converting to an array of MKAnnotations
        let annotations = locations.map { location -> MKAnnotation in
            let annotation = MKPointAnnotation()
            annotation.title = location.title
            annotation.coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            return annotation
        }
        //add annotations to the map
        MKMapView.appearance().addAnnotations(annotations)
        
    }
    
    //displaying the map
    var body: some View {
        Map(coordinateRegion: $region,
            showsUserLocation: true)
        .edgesIgnoringSafeArea(.all)
    }
}

//preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
