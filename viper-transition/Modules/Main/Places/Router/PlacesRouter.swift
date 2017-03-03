//
//  PlacesRouter.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 02.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit
import GuillotineMenu

class PlacesRouter: NSObject, PlacesWireframe {

    weak var viewController: UIViewController?
    
    lazy var presentationAnimator = GuillotineTransitionAnimation()

    static func assembleModule() -> UIViewController {
        let view = R.storyboard.main.placesViewController()
        let presenter = PlacesPresenter()
        let interactor = PlacesInteractor()
        let router = PlacesRouter()

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
        presentationAnimator.supportView = viewController?.navigationController?.navigationBar
        presentationAnimator.presentButton = sender
        
        viewController?.present(menuViewController!, animated: true, completion: nil)
    }
}

extension PlacesRouter: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .presentation
        return presentationAnimator
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .dismissal
        return presentationAnimator
    }
}
