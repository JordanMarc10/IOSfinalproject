//
//  ContactForm.swift
//  DonateNow
//
//  Created by jay on AP 1400-12-18.
//

import UIKit
import MessageUI


class ContactForm: UIViewController, MFMailComposeViewControllerDelegate {
 
    
    @IBOutlet var subClass: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var scroll: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    @IBAction func call(_ sender: Any) {
        performSegue(withIdentifier: "sixthAct" , sender: nil)
    }
    

            
            
        
    @IBAction func deliver(_ sender: Any) {
        
        
        var fname = subClass.text
        var mail = email.text
        var message = scroll.text
        
        if MFMailComposeViewController.canSendMail(){
            
            
            let mail = MFMailComposeViewController()
           
      mail.mailComposeDelegate = self
        mail.setToRecipients(["jordan.jerome@trios.com"])
        mail.setMessageBody("<h1>\(email) + \(subClass)</h1>", isHTML: true)
           present (mail,animated: true)

     } else {
        
          print("Sending is not available")
       }
    }

//    func showAlert() {
//            let alert = UIAlertController(title: "Alert", message: "Your message has been sent", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Thank-you", style: .cancel, handler: .none))
//            present(alert, animated: true)


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



}
