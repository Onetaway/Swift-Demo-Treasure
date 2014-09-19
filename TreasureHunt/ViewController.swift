/*
* Copyright (c) 2014 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView : MKMapView!
    var treasures: [Treasure] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.treasures = [HistoryTreasure(what: "Google's first office",
                                          year: 1999,
                                      latitude: 37.44451,
                                     longitude: -122.163369),
            
            HistoryTreasure(what: "Facebook's first office",
            year: 2005,
            latitude: 37.444268, longitude: -122.163271),
            
            FactTreasure(what: "Stanford University",
            fact: "Founded in 1885 by Leland Stanford.",
            latitude: 37.427474, longitude: -122.169719),
            
            FactTreasure(what: "Moscone West",
            fact: "Host to WWDC since 2003.",
            latitude: 37.783083, longitude: -122.404025),
            
            FactTreasure(what: "Computer History Museum",
            fact: "Home to a working Babbage Difference Engine.", latitude: 37.414371, longitude: -122.076817),
            
            HQTreasure(company: "Apple", latitude: 37.331741, longitude: -122.030333),
            
            HQTreasure(company: "Facebook", latitude: 37.485955, longitude: -122.148555),
            
            HQTreasure(company: "Google", latitude: 37.422, longitude: -122.084)]
        
        self.mapView.delegate = self
        self.mapView.addAnnotations(self.treasures)
    }
    
    
}


extension ViewController: MKMapViewDelegate {
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if let treasure = annotation as? Treasure {
            
            var view = mapView.dequeueReusableAnnotationViewWithIdentifier("pin") as MKPinAnnotationView!
            
            if view == nil {
                
            }
        }
    }
}






































