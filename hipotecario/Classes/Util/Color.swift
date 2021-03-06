//
//  Color.swift
//  hipotecario
//
//  Created by Jorge Naula Rios on 8/29/16.
//  Copyright © 2016 BBVA. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    convenience init(rgba: UInt32, alphaCGFloat : CGFloat) {
        let red = CGFloat((rgba & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgba & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgba & 0xFF)/256.0
        self.init(red:red, green:green, blue:blue, alpha:alphaCGFloat)
    }
    
}
