//
//  mapKit.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-19.
//

import UIKit
import MapKit


class mapKit: UIViewController {

    @IBOutlet var map: MKMapView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Set initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.283921, longitude: -157.831661)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
