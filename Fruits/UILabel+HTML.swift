//
//  UILabel+HTML.swift
//  Fruits
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

extension UILabel {
    func setHTMLText(_ text: String) {
        if let attributedString = text.htmlAttributedString(font: font, color: textColor) {
            self.attributedText = attributedString
        }  else {
            self.text = text
        }
    }
}
