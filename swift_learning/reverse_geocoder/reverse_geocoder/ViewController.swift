//
//  ViewController.swift
//  reverse_geocoder
//
//  Created by Patsy Iturbe Villegas on 11/28/16.
//  Copyright © 2016 Patsy Iturbe Villegas. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager = CLLocationManager()
    
    @IBOutlet weak var latitudLabel: UILabel!
    
    @IBOutlet weak var longitudLabel: UILabel!
    
    @IBOutlet weak var courseLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBOutlet weak var altitudLabel: UILabel!
    
    @IBOutlet weak var thoroughfareLabel: UILabel!
    
    @IBOutlet weak var subLocalityLAbel: UILabel!
    
    @IBOutlet weak var postalCodeLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0]
        
        
        let latitude = userLocation.coordinate.latitude
        
        self.latitudLabel.text = String(latitude)
        
        
        let longitude = userLocation.coordinate.longitude
        
        self.longitudLabel.text = String(longitude)
        
        
        let course = userLocation.course
        
        self.courseLabel.text = String(course)
        
        
        let speed = userLocation.speed
        
        self.speedLabel.text = String(speed)
        
        
        let altitude = userLocation.altitude
        
        self.altitudLabel.text = String(altitude)
        
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
        
            if error != nil {
                
                print(error)
                
            } else {
                
                if let placemark = placemarks?[0] {
                    
                    var subthoroughfare = ""
                    
                    if placemark.subThoroughfare != nil {
                        
                        subthoroughfare = placemark.subThoroughfare!
                        
                    }
                    
                    var thoroughfare = ""
                    
                    if placemark.thoroughfare != nil {
                        
                        thoroughfare = placemark.thoroughfare!
                        
                    }
                    
                    var subLocality = ""
                    
                    if placemark.subLocality != nil {
                        
                        subLocality = placemark.subLocality!
                        
                    }
                    
                    var postalCode = ""
                    
                    if placemark.postalCode != nil {
                        
                        postalCode = placemark.postalCode!
                        
                    }
                    
                    var country = ""
                    
                    if placemark.country != nil {
                        
                        country = placemark.country!
                        
                    }
                    
                    self.thoroughfareLabel.text = subthoroughfare + " " + thoroughfare
                    
                    self.subLocalityLAbel.text = subLocality
                    
                    self.postalCodeLabel.text = postalCode
                    
                    self.countryLabel.text = country
                    
                    
                }
                
                
                
            }
            
        }
        
    }

}

