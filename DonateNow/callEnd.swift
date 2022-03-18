//
//  callEnd.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-18.
//

import UIKit

class callEnd: UIViewController {

 
    @IBOutlet var animate: UIImageView!
    //    let DotDot = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    
    UILabel.animate(withDuration: 3.0){
        self.animate.alpha = 1
    }
    }
    
    @IBAction func end(_ sender: Any) {
        performSegue(withIdentifier: "endCall", sender: nil)
    }
}
