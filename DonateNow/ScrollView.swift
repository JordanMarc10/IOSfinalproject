//
//  ScrollView.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-25.
//

import UIKit

class ScrollView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10,width:view.frame.size.width - 20, height: view.frame.size.height - 20 ))
        
      
 
    scrollView.backgroundColor = .green
    view.addSubview(scrollView)
        

        
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
