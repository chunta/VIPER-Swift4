//
//  SideMenuInteractor.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class SideMenuInteractor: NSObject {
    weak var presenter:SideMenuPresenter?
    
    func loadSideMenuList() {
        DispatchQueue.delay(.seconds(1)) {
            print("This is after delay")
            presenter?.didLoadSideMenuList(list: ["1","2","3"])
        }
    }
}
