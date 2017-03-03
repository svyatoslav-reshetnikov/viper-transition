//
//  PlacesPresenter.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 02.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

class PlacesPresenter: PlacesPresentation, PlacesInteractorOutput {

    var view: PlacesView?
    var interactor: PlacesUseCase!
    var router: PlacesWireframe!

    func viewDidLoad() {
    }
    
    func didClickMenuButton(_ sender: UIButton) {
        router.presentMenu(sender)
    }
}
