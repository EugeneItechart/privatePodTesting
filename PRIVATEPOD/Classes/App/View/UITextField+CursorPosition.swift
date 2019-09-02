//
//  UITextField+Utils.swift
//  CustomerApp
//
//  Created by Luciano Sugiura on 29/09/16.
//  Copyright © 2016 RockSpoon. All rights reserved.
//

import UIKit

extension UITextField {
  var cursorPosition: Int? {
    get {
      if let selectedRange = self.selectedTextRange {
        return self.offset(from: self.beginningOfDocument, to: selectedRange.start)
      }
      return nil
    }
    set {
      if let newValue = newValue,
        let newPosition = self.position(
          from: self.beginningOfDocument,
          in: UITextLayoutDirection.right,
          offset: newValue) {
        
        self.selectedTextRange = self.textRange(from: newPosition, to: newPosition)
      }
    }
  }
}
