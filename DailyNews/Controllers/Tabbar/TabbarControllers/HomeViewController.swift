//
//  HomeViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/16/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    var items : Array<PostList> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }
    
    func initViews(){
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UINib(nibName: "CategoryTVC", bundle: nil), forCellReuseIdentifier: "CategoryTVC")
        myTableView.register(UINib(nibName: "ContentTVC", bundle: nil), forCellReuseIdentifier: "ContentTVC")
        
        // tableView data..
        
        items.append(PostList(title: "Campnou is best stadium in the world and it includes more than 80.000 people once. This is insane", image: "staduim", author: "by Leo Messi", category: "Entertainment"))
        items.append(PostList(title: "This girl renawned world's most beautiful girl in 2022. She won this award third time in row", image: "girl", author: "by Jon Abraham", category: "World"))
        items.append((PostList(title: "So many business owners moves to London in order to know London better. They think, London best city for living", image: "london", author: "by Peter Pen", category: "Business")))
        items.append(PostList(title: "Red busses are already symbol of London city and millions of visitors come to London to see this bus", image: "bus", author: "by Federick Adam", category: "Tourism"))
        items.append(PostList(title: "Uzbekistan celebrates November 2 as a national flag day. In this day, companies gave a one day vacation", image: "flag", author: "by Muhammadjon", category: "World"))
        items.append(PostList(title: "The California Department of Fair Employment and Housing (DFEH) intends to file a lawsuit against Tesla alleging systematic racial discrimination and harassment", image: "eloncar", author: "by Elon Musk", category: "World"))
    }
    



}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: "CategoryTVC", for: indexPath) as? CategoryTVC else{return UITableViewCell() }
            return cell
        }else{
            guard let cell = myTableView.dequeueReusableCell(withIdentifier: "ContentTVC", for: indexPath) as? ContentTVC else{return UITableViewCell() }
            
            let item = items[indexPath.row]
            
            cell.contentImg.image = UIImage(named: item.image)
            cell.title.text = item.title
            cell.authorLabel.text = item.author
            cell.categoryLabel.text = item.category
            
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 50
        }else{
            return 160
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = DescriptionViewController(nibName: "DescriptionViewController", bundle: nil)
        vc.image = UIImage(named: items[indexPath.row])!
        vc.title = items[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
