//
//  SignInViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/18/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    var check = true
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var pswField: UITextField!
    @IBOutlet weak var showPassImg: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Navigation appears, disappears..
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

  
    
    @IBAction func btnPressed(_ sender: Any) {
        
    }
    @IBAction func showPassword(_ sender: Any) {
        if check{
            pswField.isSecureTextEntry = true
            showPassImg.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }else{
            pswField.isSecureTextEntry = false
            showPassImg.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            
            
        }
        check = !check
    }
    
    @IBAction func registerPressed(_ sender: Any) {
        
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func forgerPressed(_ sender: Any) {
        let vc = ResetViewController(nibName: "ResetViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
