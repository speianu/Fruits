//
//  FruitsViewController.swift
//  TabsController
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit
import Material

class FruitsViewController: TabsController {
    
    override func prepare() {
        super.prepare()
        
        tabBarAlignment = .top
        tabBar.lineAlignment = .bottom
        tabBar.lineColor = .red
    }
}

