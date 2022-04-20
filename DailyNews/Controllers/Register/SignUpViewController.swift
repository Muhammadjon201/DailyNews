//
//  SignUpViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/16/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var check1 = true
    
    @IBOutlet weak var userNameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxtf: UITextField!
    @IBOutlet weak var eyeImage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    @IBAction func LoginPressed(_ sender: Any) {
       // let vc = SignInViewController(nibName: "SignInViewController", bundle: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func eyeImgPressed(_ sender: Any) {
        if check1{
            passwordTxtf.isSecureTextEntry = true
            eyeImage.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }else{
            passwordTxtf.isSecureTextEntry = false
            eyeImage.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }
        check1 = !check1
    }
    
}
