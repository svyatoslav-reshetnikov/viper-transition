//
//  PlacesContract.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 02.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit

protocol PlacesView {
    var presenter: PlacesPresentation! { get set }
}

protocol PlacesPresentation: class {
    var view: PlacesView? { get set }
    var interactor: PlacesUseCase! { get set }
    var router: PlacesWireframe! { get set }

    func viewDidLoad()
    func didClickMenuButton(_ sender: UIButton)
}

protocol PlacesUseCase: class {
    weak var output: PlacesInteractorOutput! { get set }
}

protocol PlacesInteractorOutput: class {
}

protocol PlacesWireframe: class {
    weak var viewController: UIViewController? { get set }

    //func presentSortOptions(sortCompletion: ((ArticlesSortType) -> ())?)
    func presentMenu(_ sender: UIButton)

    static func assembleModule() -> UIViewController
}
