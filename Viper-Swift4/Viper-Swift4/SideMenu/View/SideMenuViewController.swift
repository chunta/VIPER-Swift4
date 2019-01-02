//
//  SideMenuViewController.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    var presenter:SideMenuPresenter?
    
    @IBOutlet var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SideMenuTableCell", bundle: nil), forCellReuseIdentifier: "SideMenuCell")
    }
}

extension SideMenuViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell") as! SideMenuTableCell
        cell.textLabel?.text = String.init(format: "%d", indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
