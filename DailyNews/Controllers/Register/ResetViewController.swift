//
//  ResetViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/21/22.
//

import UIKit

class ResetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    // Hide navigation Bar..
    
    @IBAction func resetPressed(_ sender: Any) {
        let vc = VerifyViewController(nibName: "VerifyViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
