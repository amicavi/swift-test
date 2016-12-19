//
//  ViewController.swift
//  maps
//
//  Created by Patsy Iturbe Villegas on 11/25/16.
//  Copyright © 2016 Patsy Iturbe Villegas. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    //20.6615826,-103.4245111
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitud: CLLocationDegrees = 20.6615826
        
        let longitud: CLLocationDegrees = -103.4245111
        
        let latDelta: CLLocationDegrees = 0.05
        
        let lonDelta: CLLocationDegrees = 0.05
        
        let coordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitud, longitude: longitud)
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinate, span: span)
        
        map.setRegion(region, animated: true)
        
        let annotacion = MKPointAnnotation()
        
        annotacion.title = "StartBlueSoft"
        
        annotacion.subtitle = "Where I work"
        
        annotacion.coordinate = coordinate
        
        map.addAnnotation(annotacion)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(gestureRecognizer:)))
        
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
        
    }
    
    
    func longPress(gestureRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New place"
        
        annotation.subtitle = "Your choosen place"
        
        map.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

