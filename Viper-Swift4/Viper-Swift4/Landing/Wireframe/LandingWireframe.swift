//
//  LandingWireframe.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class LandingWireframe: NSObject {
 class func createModule()->UIViewController
 {
    let landingvctl:LandingViewController = LandingViewController.init()
    let presenter:LandingPresenter = LandingPresenter()
    presenter.view = landingvctl
    presenter.wireframe = LandingWireframe()
    presenter.interactor = LandingInteractor()
    presenter.interactor?.presenter = presenter
    return landingvctl
 }
    
 func pushToDetail(landing:Landing, view:UIViewController)
 {
 //view.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
 }
}
