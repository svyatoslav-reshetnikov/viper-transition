//
//  RootRouter.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 02.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

class RootRouter: RootContract {

    func presentMainScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        
        let tabBarController = R.storyboard.main.tabBarController()
        
        let places = PlacesRouter.assembleModule()
        let placesList = R.storyboard.main.placesListNavigationController()
        placesList?.viewControllers = [PlacesListRouter.assembleModule()]
        let orders = R.storyboard.main.ordersNavigationController()
        orders?.viewControllers = [R.storyboard.main.ordersViewController() ?? UIViewController()]
        
        tabBarController?.viewControllers = [places, placesList!, orders!]
        window.rootViewController = tabBarController
    }
}
