//
//  CategoryTVC.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/23/22.
//

import UIKit

class CategoryTVC: UITableViewCell {

    @IBOutlet weak var myCollection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myCollection.delegate = self
        myCollection.dataSource = self
        myCollection.register(UINib(nibName: "CatCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CatCollectionViewCell")
        self.myCollection.contentInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    var data:[Data] = [
        Data(name: "For you", isSelect: true),
        Data(name: "Top", isSelect: false),
        Data(name: "World", isSelect: false),
        Data(name: "Politics", isSelect: false),
        Data(name: "Entertainment", isSelect: false)
    ]
    
}
extension CategoryTVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "CatCollectionViewCell", for: indexPath) as? CatCollectionViewCell else{return UICollectionViewCell()}
        cell.updateCell(item:data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == myCollection{
                  for i in data.enumerated(){
                      data[i.offset].isSelect = false
                  }
                  data[indexPath.row].isSelect = true
                  collectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width/4 - 10 * 1.9, height: 35)
    }
    

    
    
}
