//
//  LandingWireframe.swift
//  Viper-Swift4
//
//  Created by nmi on 2019/1/2.
//  Copyright © 2019 nmi. All rights reserved.
//

import UIKit

class LandingWireframe: NSObject {
 
 static fileprivate var navigation:UINavigationController?
    class func createModule(rootnavi:UINavigationController)->UIViewController
 {
    navigation = rootnavi
    
    let landingvctl:LandingViewController = LandingViewController.init()
    let presenter:LandingPresenter = LandingPresenter()
    landingvctl.presenter = presenter
    presenter.view = landingvctl
    presenter.wireframe = LandingWireframe()
    presenter.interactor = LandingInteractor()
    presenter.interactor?.presenter = presenter
    return landingvctl
 }
    
 func pushToDetail(landing:Landing, view:UIViewController)
 {
 
 }
    
}
