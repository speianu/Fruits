//
//  PearsViewController.swift
//  Fruits
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

class PearsViewController: UITableViewController {
    fileprivate let cellReuseIdentifier = "TableViewCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tabItem.title = "Pears"
    }
}

extension PearsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.textColor = .blue
        cell.textLabel?.font = .systemFont(ofSize: 20.0)
        cell.textLabel?.setHTMLText("Pear \(indexPath.row)")
        
        return cell
    }
}
