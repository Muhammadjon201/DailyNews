//
//  CatCollectionViewCell.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/23/22.
//

import UIKit

class CatCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var myLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myView.layer.cornerRadius = 10
       
    }
    
    func updateCell(item: Data){
        myLbl.text = item.name
        //myView.isHidden = !item.isSelect
        if item.isSelect{
            myLbl.textColor = UIColor.white
            myView.backgroundColor = UIColor.black
        }else{
            myLbl.textColor = UIColor.systemGray
            myView.backgroundColor = UIColor.systemGray3
        }
    }
}
