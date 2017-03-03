//
//  PlacesListPresenter.swift
//  LunchDot
//
//  Created by SVYAT on 28.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

class PlacesListPresenter: PlacesListPresentation, PlacesListInteractorOutput {
    
    var view: PlacesListView?
    var interactor: PlacesListUseCase!
    var router: PlacesListWireframe!
    
    func viewDidLoad() {
    }
    
    func didClickMenuButton(_ sender: UIButton) {
        router.presentMenu(sender)
    }
}
