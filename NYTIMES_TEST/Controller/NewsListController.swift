//
//  NewsListController.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit
import MBProgressHUD

class NewsListController: BaseController, UITableViewDelegate, UITableViewDataSource {
    var newsListArray:[News]?
    @IBOutlet weak var newsTable:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewsList()
        self.title = "NYNEWS"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: - Configuring tableview
    func configureTableView(){
        self.newsTable?.register(UINib.init(nibName: "newsCell", bundle: nil), forCellReuseIdentifier: "NEWS_CELL")
        self.newsTable?.reloadData()
        self.newsTable?.estimatedRowHeight = 55
        self.newsTable?.rowHeight = UITableViewAutomaticDimension
        self.newsTable?.tableFooterView = UIView()
        self.view.layoutIfNeeded()
        self.view.layoutSubviews()
    }
    //MARK: - Getting news list
    func getNewsList(){
        self.showProgressHud()
        NewsMedia().getNewsList(){ (newsList, error) in
            self.hideProgressHud()
            if let news = newsList{
                self.newsListArray = news
                self.configureTableView()
            }
        }
    }
    
    //MARK: - TableView
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard (newsListArray != nil) else {
            return 0
        }
        return (newsListArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NEWS_CELL", for: indexPath) as! newsCell
        
        let news:News = newsListArray![indexPath.row]
        cell.title.text = news.title
        
        cell.pub_date.text = news.published_date
        cell.author.text = news.byline
        cell.type.text = news.type
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = kStoryBoardMain.instantiateViewController(withIdentifier: viewControllerIdentifier.NEWS_DETAIL_CONTROLLER.value) as! NewsDetailController
        let news:News = newsListArray![indexPath.row]
        viewController.newsDetailUrl = news.url
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
