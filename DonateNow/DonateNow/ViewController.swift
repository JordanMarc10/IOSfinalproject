//
//  ViewController.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mention: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.performSegue(withIdentifier: "sign", sender: nil)
            }
            UILabel.animate(withDuration: 3.0){
                self.mention.alpha = 1
    //            self.mention.backgroundColor =
            }
        }
    }




