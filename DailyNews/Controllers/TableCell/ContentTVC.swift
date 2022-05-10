//
//  ContentTVC.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/29/22.
//

import UIKit

class ContentTVC: UITableViewCell {
  
    @IBOutlet weak var contentImg: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

//        contentImg.layer.masksToBounds = true
//        contentImg.layer.cornerRadius = 30
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
