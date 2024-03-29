//
//  UIColor+Hex.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/11/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

extension UIColor {
  convenience init(red: Int, green: Int, blue: Int, alpha: Int = 0xFF) {
    self.init(
      red: CGFloat(red) / 255.0,
      green: CGFloat(green) / 255.0,
      blue: CGFloat(blue) / 255.0,
      alpha: CGFloat(alpha) / 255.0
    )
  }
  
  // let's suppose alpha is the first component (ARGB)
  convenience init(argb: Int) {
    self.init(
      red: (argb >> 16) & 0xFF,
      green: (argb >> 8) & 0xFF,
      blue: argb & 0xFF,
      alpha: (argb >> 24) & 0xFF
    )
  }
}
