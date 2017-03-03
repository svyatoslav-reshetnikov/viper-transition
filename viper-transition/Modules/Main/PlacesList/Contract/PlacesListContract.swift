//
//  PlacesListContract.swift
//  LunchDot
//
//  Created by SVYAT on 28.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

protocol PlacesListView {
    var presenter: PlacesListPresentation! { get set }
}

protocol PlacesListPresentation: class {
    var view: PlacesListView? { get set }
    var interactor: PlacesListUseCase! { get set }
    var router: PlacesListWireframe! { get set }
    
    func viewDidLoad()
    func didClickMenuButton(_ sender: UIButton)
}

protocol PlacesListUseCase: class {
    weak var output: PlacesListInteractorOutput! { get set }
}

protocol PlacesListInteractorOutput: class {
}

protocol PlacesListWireframe: class {
    weak var viewController: UIViewController? { get set }
    
    func presentMenu(_ sender: UIButton)
    
    static func assembleModule() -> UIViewController
}
