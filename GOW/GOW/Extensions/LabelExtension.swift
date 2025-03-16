//
//  LabelExtension.swift
//  GOW
//
//  Created by Allison on 15/03/25.
//

import UIKit

extension UILabel {
    
//    func setCustomFont(fontName: String, size: CGFloat) {
//        guard let customFont = UIFont(name: fontName, size: size) else {
//            self.font = UIFont.systemFont(ofSize: size)
//            return
//        }
//        self.font = customFont
//    }
    
    func setCustomFont(fontName: String, size: CGFloat, texStyle: UIFont.TextStyle) {
        guard let customFont = UIFont(name: fontName, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        self.font = customFont
        
        if #available(iOS 11.0, *){
            let fontMetrics = UIFontMetrics(forTextStyle: texStyle)
            self.font = fontMetrics.scaledFont(for: customFont)
            self.adjustsFontForContentSizeCategory = true
        }
    }
}
