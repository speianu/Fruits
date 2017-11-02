//
//  UIColor+Hex.swift
//  Fruits
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

extension UIColor {
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgba: UInt64 = (UInt64)(r*255)<<24 | (UInt64)(g*255)<<16 | (UInt64)(b*255)<<8 | (UInt64)(a*255)
        
        return String(format:"#%08x", rgba)
    }
}
