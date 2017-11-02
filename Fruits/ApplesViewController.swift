//
//  ApplesViewController.swift
//  Fruits
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

class ApplesViewController: UITableViewController {
    fileprivate let cellReuseIdentifier = "TableViewCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tabItem.title = "Apples"
    }
}

extension ApplesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.textLabel?.textColor = .green
        cell.textLabel?.font = .systemFont(ofSize: 10.0)
        cell.textLabel?.setHTMLText("Apple \(indexPath.row)")
        
        return cell
    }
}
