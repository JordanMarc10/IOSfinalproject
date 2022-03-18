//
//  donatePage.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-18.
//

import UIKit

class donatePage: UIViewController {

    @IBOutlet var goal: UITextField!
    @IBOutlet var raise: UITextField!
    @IBOutlet var counter: UILabel!
    @IBOutlet var reset: UIButton!
    @IBOutlet var pbBar: UIProgressView!
    
    
    var count = 0
    var num1 = 0
    var num2 = 0
    var goals = 2300
    var raised = String("goals")
    var label = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        // Do any additional setup after loading the view.
    }
    
    
    // Back & Forward buttons
    
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "backbtn", sender: nil)
    }
    
    
    // Add & Subtracting Method
    
    @IBAction func add(_ sender: Any) {
        
        num1 += 1;
        counter.text = String(num1)
        goal.text = String(goals)
        raise.text = String("\(num1) \(goals)")
        
        switch count {
        
        case 0..<5:
            counter.tintColor = UIColor.blue;
        case 2...5:
            counter.tintColor = UIColor.red;
        case _ where num2 > 1:
            counter.tintColor = UIColor.green;
        default:
            pbBar.tintColor = UIColor.red;
        }
        pbBar.progress += 0.1
        
        
        switch num2 {
        
        case 2...5:
            pbBar.tintColor = UIColor.blue;
        case 2...5:
            pbBar.tintColor = UIColor.red;
        case _ where num2 > 1:
            pbBar.tintColor = UIColor.green;
        default:
            pbBar.tintColor = UIColor.red;
        }
        pbBar.progress += 0.1
        
    }
    
    @IBAction func substract(_ sender: Any) {
      
        num2 -= 1;
        counter.text = String(num2)
        goal.text = String(goals)
        raise.text = String(num2)
        
        
        switch count {
        
        case 0..<5:
            counter.tintColor = UIColor.blue;
        case 2...5:
            counter.tintColor = UIColor.red;
        case _ where num2 > 1:
            counter.tintColor = UIColor.green;
        default:
            pbBar.tintColor = UIColor.red;
        }
        pbBar.progress -= 0.1
        
        switch num2 {
        
        case 2...5:
            pbBar.tintColor = UIColor.blue;
        case 2...5:
            pbBar.tintColor = UIColor.red;
        case _ where num2 > 1:
            pbBar.tintColor = UIColor.green;
        default:
            pbBar.tintColor = UIColor.yellow;
        }
        pbBar.progress -= 0.1
    }
    
   @IBAction func check(_ sender: Any) {

    
    performSegue(withIdentifier: "sixthAct", sender: nil)
     }
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "sixthAct", sender: nil)
    }
    
    }
    //    func math() -> Int{
//
//        num1 += 1
//        num2 -= 1
//
//        return {Int}
//    }
//    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//

