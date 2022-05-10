//
//  DescriptionViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 5/1/22.
//

import UIKit

class DescriptionViewController: UIViewController {

   
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    var image = UIImage()
    var title = String = 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationSettings()
        image1.image = image
        DescriptionLabel.text = title
    }
    

    func navigationSettings(){
        let bookmark = UIImage(systemName: "bookmark")
        let arrowUp = UIImage(systemName: "square.and.arrow.up")
        
       let pencilButton = UIBarButtonItem(image: arrowUp, style: .plain, target: self, action: #selector(nextTapped(sender:)))
        
        let bookmarkButton = UIBarButtonItem(image: bookmark, style: .plain, target: self, action: #selector(rightTapped(sender:)))
        
        navigationItem.rightBarButtonItems = [pencilButton, bookmarkButton]
    }
    
    // Navigation Bat item action
    
    @objc func rightTapped(sender: AnyObject){
        
    }
    @objc func nextTapped(sender: AnyObject){
        
    }

}
