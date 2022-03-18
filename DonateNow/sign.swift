//
//  sign.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-17.
//

import UIKit
import MessageUI
import AppleArchive
import CoreHaptics
import CFNetwork



class sign: UIViewController {

    @IBOutlet var motions: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            self.performSegue(withIdentifier: "firstAct", sender: nil)
            
        }
        UILabel.animate(withDuration: 1.0){
            self.motions.alpha = 1
            self.performSegue(withIdentifier: "firstAct", sender: nil)
           
          
        }
        
        
    }

        // Do any additional setup after loading the view.
    }
    

        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


