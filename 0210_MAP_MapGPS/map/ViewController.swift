//
//  ViewController.swift
//  map
//
//  Created by Min Aung Hein on 14/5/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit
import MapKit

import AddressBookUI



class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    
    var lm = CLLocationManager( )
    
    
    

    @IBOutlet weak var myMap: MKMapView!
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        
       // print(locations)
        
        let loc = locations[0]
        
        
        
        showOnTheMap(loc.coordinate.latitude , locLong: loc.coordinate.longitude )
        
        
        
    }
    
    func forwardGeocoding(address: String) {
        CLGeocoder().geocodeAddressString(address, completionHandler: { (placemarks, error) in
            if error != nil {
                print(error)
                return
            }
            if placemarks?.count > 0 {
                let placemark = placemarks?[0]
                let location = placemark?.location
                let coordinate = location?.coordinate
                print("\nlat: \(coordinate!.latitude), long: \(coordinate!.longitude)")
                
                self.showOnTheMap(coordinate!.latitude , locLong: coordinate!.latitude )
                
                if placemark?.areasOfInterest?.count > 0 {
                    let areaOfInterest = placemark!.areasOfInterest![0]
                    print(areaOfInterest)
                } else {
                    print("No area of interest found.")
                }
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myMap.showsPointsOfInterest = true
        myMap.showsTraffic = true
        
        
        lm.delegate = self
        lm.requestWhenInUseAuthorization()
        lm.requestAlwaysAuthorization()
        lm.startUpdatingLocation()
        
        let lat:CLLocationDegrees = 16.857095
        let long:CLLocationDegrees = 96.1546
        
       showOnTheMap(lat, locLong: long)
       showAnnotation(lat, locLong:long,title:"Test")
      
        var longitude :CLLocationDegrees = -122.0312186
        var latitude :CLLocationDegrees = 37.33233141
        
        var location = CLLocation(latitude: latitude, longitude: longitude) //changed!!!
        print(location)
        
        self.forwardGeocoding("Shwedagon")
        
        CLGeocoder().reverseGeocodeLocation(location, completionHandler: {(placemarks, error) -> Void in
            print(location)
            
            if error != nil {
                print("Reverse geocoder failed with error" )
                return
            }
            
            if placemarks!.count > 0 {
                let pm = placemarks![0] as! CLPlacemark
                print(pm.locality)
                let address = ABCreateStringWithAddressDictionary(pm.addressDictionary!, false)
                print("\n\(address)")
                if pm.areasOfInterest?.count > 0 {
                    let areaOfInterest = pm.areasOfInterest?[0]
                    print(areaOfInterest!)
                } else {
                    print("No area of interest found.")
                }
                //print(placemarks)
                print("Test")
            }
            else {
                print("Problem with the data received from geocoder")
            }
            
            
            
        })
        
      /*  var myPoint = MKPointAnnotation()
        myPoint.title = "Kabar Aye Pagoda"
        myPoint.subtitle = "Famous Pagoda: Address"
        
        var myPoint2 = MKPointAnnotation()
        myPoint2.title = "Other Place"
        myPoint2.subtitle = "......"
        
        myPoint.coordinate = loc
        
        myPoint2.coordinate = loc2
        
        myMap.addAnnotation(myPoint)
        myMap.addAnnotation(myPoint2)
    */
        
    }

    func showOnTheMap(locLat:CLLocationDegrees , locLong:CLLocationDegrees  )
    {
        let loc = CLLocationCoordinate2DMake(locLat, locLong)
        let latdelta:CLLocationDegrees = 0.002
        let longdelta:CLLocationDegrees = 0.002
        
        //Step 2
        let span = MKCoordinateSpanMake(latdelta, longdelta)
        let region = MKCoordinateRegionMake(loc,span)
        myMap.setRegion(region, animated: true)
    }
    
    func showAnnotation(locLat:CLLocationDegrees , locLong:CLLocationDegrees,title:String  )
    {
        var myPoint = MKPointAnnotation()
        myPoint.title = title
        let loc = CLLocationCoordinate2DMake(locLat, locLong)
        myPoint.coordinate = loc
        
        myMap.addAnnotation(myPoint)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

