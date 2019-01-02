//
//  RealTimeViewController.swift
//  Viper-Swift4
//
//  Created by Cindy on 2019/1/2.
//  Copyright © 2019年 nmi. All rights reserved.
//

import UIKit

class RealTimeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var presenter:RealtimePresenter?
    @IBOutlet var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "RealTimeCell", bundle: nil), forCellReuseIdentifier: "RealTimeCell")
        
        presenter?.loadRealTimeList()
    }
    
    func didLoadArticleList()
    {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter!.realTimeArticleCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RealTimeCell") as! RealTimeCell
        cell.textLabel?.text = presenter!.realTimeTitleArticleAt(index: indexPath.row)
        return cell
    }

}
