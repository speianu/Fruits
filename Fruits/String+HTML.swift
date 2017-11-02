//
//  String+HTML.swift
//  Fruits
//
//  Created by Andrei Dumitru on 02/11/2017.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

extension String {
    func htmlAttributedString(font: UIFont, color: UIColor) -> NSAttributedString? {
        var text = replacingOccurrences(of: "\n", with: "</br>")
        text = NSString(format:"<span style=\"color:\(color.toHexString());font-family: \(font.fontName); font-size: \(font.pointSize)\">%@</span>" as NSString, text) as String
        
        guard let data = text.data(using: String.Encoding.unicode, allowLossyConversion: true) else {
            return nil
        }
        do {
            let attrStr = try NSAttributedString(
                data: data,
                options: [.documentType: NSAttributedString.DocumentType.html.rawValue,
                          .characterEncoding: String.Encoding.unicode.rawValue],
                documentAttributes: nil)
            
            return attrStr
        } catch _ {
            return nil
        }
    }
}
