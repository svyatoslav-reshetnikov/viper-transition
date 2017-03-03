//
//  PlacesListViewController.swift
//  LunchDot
//
//  Created by SVYAT on 28.02.17.
//  Copyright © 2017 LunchDot. All rights reserved.
//

import UIKit
import GuillotineMenu

class PlacesListViewController: UIViewController, PlacesListView {
    
    @IBOutlet weak var placesTable: UITableView!
    
    var presenter: PlacesListPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView(placesTable)
        
        presenter.viewDidLoad()
    }
    
    func setupTableView(_ tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    @IBAction func didClickMenuButton(_ sender: UIButton) {
        presenter.didClickMenuButton(sender)
    }
}

// MARK: UITableView
extension PlacesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceListCell") as? PlaceListCell
        
        return cell!
    }
}

extension PlacesListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
}
