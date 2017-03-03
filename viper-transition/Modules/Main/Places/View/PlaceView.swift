//
//  PlaceView.swift
//  LunchDot
//
//  Created by Svyatoslav Reshetnikov on 18.12.16.
//  Copyright © 2016 LunchDot. All rights reserved.
//

import UIKit

/** 
 PlaceView is a card for main screen
 */
public class PlaceView: UIView {

    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var coverHeight: NSLayoutConstraint!

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var cuisine: UILabel!
    @IBOutlet weak var averageCheck: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var address: UILabel!
    
    public class func instanceFromNib(frame: CGRect) -> PlaceView {
        let view = UINib(nibName: "PlaceView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? PlaceView
        view?.frame = frame

        view?.layer.shadowColor = UIColor.lightGray.cgColor
        view?.layer.shadowOpacity = 0.55
        view?.layer.shadowOffset = CGSize(width: 5, height: 5)

        return view!
    }
}
