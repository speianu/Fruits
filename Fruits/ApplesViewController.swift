//
//  ApplesViewController.swift
//  TabsController
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

extension UILabel {
    func setHTMLText(_ text: String) {
        if let attributedString = text.htmlAttributedString(font: font, color: textColor) {
            self.attributedText = attributedString
        }  else {
            self.text = text
        }
    }
}

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
