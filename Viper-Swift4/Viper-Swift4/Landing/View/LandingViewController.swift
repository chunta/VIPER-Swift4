//
//  LandingViewController.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit
import SideMenu
class LandingViewController: UIViewController {

    @IBOutlet var txt:UILabel!
    var presenter:LandingPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()

        txt.text = String.init(format: "%d", Int.random(in: 0...20000))
    }
}
