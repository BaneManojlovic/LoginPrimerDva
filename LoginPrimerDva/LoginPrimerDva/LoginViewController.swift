//
//  ViewController.swift
//  LoginPrimerDva
//
//  Created by Robert on 2/5/19.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    

    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var loginButton: UIButton!
    @IBAction func LoginBtnPressed(_ sender: Any) {
        
        if (emailAddressTextField.text == "admin@gmail.com" && passwordTextField.text == "123") {
            print("Login Passed OK!!!")
            //naredbe za otvaranje novog ViewController-a iz ovog u kome se trenutno nalazim
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newTutorialViewController = storyboard.instantiateViewController(withIdentifier: "tutorialViewController") as! TutorialViewController
            //ovu liniju koda koristim kada imam navigacionu strelicu za back. Tj. kada uglavim Navigation Controller na pocetku Main storyboard-a
            self.navigationController?.pushViewController(newTutorialViewController, animated: true)
            //ovu liniju koda koristim kada nemam strelicu za back na navigacionoj liniji
//            self.present(newTutorialViewController, animated: true, completion: nil)
        } else {
            print("Login Failed!")
            //prikazuje mi alert prozor sa dismiss dugmetom - OVO KORISTI UMESTO POP-UP PORUKE KOJU SI UVEK KORISTIO U ANDROID-u
            let alert = UIAlertController(title: "Login Failed!", message: "Wrong user credentials!", preferredStyle: .alert)
            let dissmisButton = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
            alert.addAction(dissmisButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

