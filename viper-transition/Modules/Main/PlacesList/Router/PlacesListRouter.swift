//
//  PlacesListRouter.swift
//  LunchDot
//
//  Created by SVYAT on 28.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit
import GuillotineMenu

class PlacesListRouter: NSObject, PlacesListWireframe {
    
    weak var viewController: UIViewController?
    
    lazy var presentationAnimator = GuillotineTransitionAnimation()
    
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.main.placesListViewController()
        let presenter = PlacesListPresenter()
        let interactor = PlacesListInteractor()
        let router = PlacesListRouter()
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return view!
    }
    
    func presentMenu(_ sender: UIButton) {
        
        let menuViewController = R.storyboard.main.menuViewController()
        menuViewController?.modalPresentationStyle = .custom
        menuViewController?.transitioningDelegate = self
        
        presentationAnimator.animationDelegate = menuViewController as? GuillotineAnimationDelegate
        presentationAnimator.supportView = viewController?.navigationController!.navigationBar
        presentationAnimator.presentButton = sender
        
        viewController?.present(menuViewController!, animated: true, completion: nil)
    }
}

extension PlacesListRouter: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .presentation
        return presentationAnimator
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .dismissal
        return presentationAnimator
    }
}
