//
//  login.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-18.
//

import UIKit


class login: UIViewController {
    
    @IBOutlet var pass: UITextField!
    @IBOutlet var signMail: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
    }
    var password: String! = ""
    var userName: String! = ""
    
    
    
    @IBAction func button(_ sender: Any) {
            
        let pass = password
        let signMail = userName
    
        if ((password != nil) || ((userName) != nil)){
        performSegue(withIdentifier: "secAct", sender: nil)
        }
        else {
            
            showAlert()
        }
      }
    
    func showAlert(){
        let alert = UIAlertController(title: "Try Again", message: "Wrong password or UserName" , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Alert", style: .cancel, handler: .none))
    present(alert, animated: true)
    }
    
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



