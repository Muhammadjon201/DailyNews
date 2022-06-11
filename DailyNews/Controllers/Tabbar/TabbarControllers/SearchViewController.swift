//
//  SearchVViewController.swift
//  DailyNews
//
//  Created by Muhammadjon Mamarasulov on 4/16/22.
//

import UIKit

class SearchViewController: UIViewController {
   
    @IBOutlet weak var searchLbl: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
     
    var array = [PostList]()
    var filteredData = [PostList]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
        
        searchLbl.searchTextField.layer.cornerRadius = 20
        searchLbl.searchTextField.layer.masksToBounds = true
        searchLbl.delegate = self
        initViews()
        
        filteredData = array
    }
    
    
    func initViews(){
        searchTableView.delegate = self
        searchTableView.dataSource = self
        searchTableView.register(UINib(nibName: "ContentTVC", bundle: nil), forCellReuseIdentifier: "ContentTVC")
        
        
        // tableView data..
        
        array.append(PostList(title: "Campnou is best stadium in the world and it includes more than 80.000 people once. This is insane", image: "staduim", author: "by Leo Messi", category: "Entertainment"))
        array.append(PostList(title: "This girl renawned world's most beautiful girl in 2022. She won this award third time in row", image: "girl", author: "by Jon Abraham", category: "World"))
        array.append((PostList(title: "So many business owners moves to London in order to know London better. They think, London best city for living", image: "london", author: "by Peter Pen", category: "Business")))
        array.append(PostList(title: "Red busses are already symbol of London city and millions of visitors come to London to see this bus", image: "bus", author: "by Federick Adam", category: "Tourism"))
        array.append(PostList(title: "Uzbekistan celebrates November 2 as a national flag day. In this day, companies gave a one day vacation", image: "flag", author: "by Muhammadjon", category: "World"))
        array.append(PostList(title: "The California Department of Fair Employment and Housing (DFEH) intends to file a lawsuit against Tesla alleging systematic racial discrimination and harassment", image: "eloncar", author: "by Elon Musk", category: "World"))
    }
    
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
            return filteredData.count
        }else{
            return array.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = searchTableView.dequeueReusableCell(withIdentifier: "ContentTVC", for: indexPath) as? ContentTVC else{return UITableViewCell() }
            
        if searching{
            let item = filteredData[indexPath.row]
            
            cell.contentImg.image = UIImage(named: item.image)
            cell.title.text = item.title
            cell.authorLabel.text = item.author
            cell.categoryLabel.text = item.category
       
        }else{
            let item = array[indexPath.row]
            
            cell.contentImg.image = UIImage(named: item.image)
            cell.title.text = item.title
            cell.authorLabel.text = item.author
            cell.categoryLabel.text = item.category
       
        }
            return cell
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
            return 160
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = DescriptionViewController(nibName: "DescriptionViewController", bundle: nil)

        let item = filteredData[indexPath.row]
        
        vc.loadViewIfNeeded()
        vc.DescriptionLabel.text = item.title
        vc.image1.image = UIImage(named: item.image)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension SearchViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredData = array.filter({$0.title.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        searchTableView.reloadData()

    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        searchTableView.reloadData()
    }
    
}

