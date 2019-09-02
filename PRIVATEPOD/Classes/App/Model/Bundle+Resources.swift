//
//  Bundle+Resources.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/15/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

import Foundation

fileprivate final class Resources {}

extension Bundle {
  static var resources: Bundle {
    let path = Bundle(for: Resources.self).path(forResource: "Resources", ofType: "bundle")!
    return Bundle(path: path) ?? Bundle.main
  }
}
