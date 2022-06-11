//
//  VerifyViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/21/22.
//

import UIKit

class VerifyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        // Do any additional setup after loading the view.
    }


    @IBAction func resentAlertPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Email sent", message: "Plese check your email to reset your password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        let vc = NewPasswordViewController(nibName: "NewPasswordViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
