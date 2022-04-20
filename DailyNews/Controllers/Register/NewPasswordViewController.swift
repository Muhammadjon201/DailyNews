//
//  NewPasswordViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/21/22.
//

import UIKit

class NewPasswordViewController: UIViewController {
    
    var check = true
    
    @IBOutlet weak var newPsw: UITextField!
    
    @IBOutlet weak var confirmpsw: UITextField!
  
    @IBOutlet weak var showImg: UIButton!
    @IBOutlet weak var showImg2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func eyeBtnPressed(_ sender: Any) {
        if check{
            newPsw.isSecureTextEntry = true
            showImg.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }else{
            newPsw.isSecureTextEntry = false
            showImg.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
     check = !check
    }
    
    @IBAction func eyeBtn2Pressed(_ sender: Any) {
        if check{
            confirmpsw.isSecureTextEntry = true
            showImg2.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }else{
            confirmpsw.isSecureTextEntry = false
            showImg2.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
        check = !check
    }
    

    @IBAction func goHomePressed(_ sender: Any) {
        if newPsw.text == confirmpsw.text && !newPsw.text!.isEmpty && !confirmpsw.text!.isEmpty{
            let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
