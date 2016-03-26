//
//  MapViewController.swift
//  Quotes
//
//  Created by Quintin Smith on 3/25/16.
//  Copyright © 2016 wasatchcode. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager: CLLocationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        
        self.locationManager.delegate = self
        self.locationManager.distanceFilter = kCLHeadingFilterNone
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        
        //get permission to use maps
        self.locationManager.requestAlwaysAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        if let mapView = mapView {
            mapView.showsUserLocation = true
        }
        
    }

}

extension MapViewController: CLLocationManagerDelegate {
    
}

extension MapViewController: MKMapViewDelegate {
    
}
