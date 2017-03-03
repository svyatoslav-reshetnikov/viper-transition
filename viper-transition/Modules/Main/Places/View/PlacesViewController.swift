//
//  PlacesViewController.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 02.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit
import GuillotineMenu

class PlacesViewController: UIViewController, PlacesView {

    fileprivate lazy var presentationAnimator = GuillotineTransitionAnimation()
    
    var presenter: PlacesPresentation!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
    
    @IBAction func didClickMenuButton(_ sender: UIButton) {
        presenter.didClickMenuButton(sender)
    }
}
