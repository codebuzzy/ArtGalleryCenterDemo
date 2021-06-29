//
//  UIColor+Additions.swift
//  TGP - rework
//
//  Generated on Zeplin. (29/06/2021).
//  Copyright (c) 2021 __MyCompanyName__. All rights reserved.
//

import UIKit

extension UIColor {

  @nonobjc class var purpleBrown: UIColor {
    return UIColor(red: 35.0 / 255.0, green: 31.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var windowsBlue: UIColor {
    return UIColor(red: 58.0 / 255.0, green: 142.0 / 255.0, blue: 193.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var cornflowerBlue: UIColor {
    return UIColor(red: 87.0 / 255.0, green: 123.0 / 255.0, blue: 223.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var black: UIColor {
    return UIColor(white: 0.0, alpha: 1.0)
  }

  @nonobjc class var cherry: UIColor {
    return UIColor(red: 217.0 / 255.0, green: 0.0, blue: 52.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var cornflowerBlueTwo: UIColor {
    return UIColor(red: 89.0 / 255.0, green: 125.0 / 255.0, blue: 223.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var white: UIColor {
    return UIColor(white: 216.0 / 255.0, alpha: 1.0)
  }

  @nonobjc class var yellowOrange: UIColor {
    return UIColor(red: 1.0, green: 181.0 / 255.0, blue: 0.0, alpha: 1.0)
  }

  @nonobjc class var tomato: UIColor {
    return UIColor(red: 236.0 / 255.0, green: 81.0 / 255.0, blue: 81.0 / 255.0, alpha: 1.0)
  }

}
extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
