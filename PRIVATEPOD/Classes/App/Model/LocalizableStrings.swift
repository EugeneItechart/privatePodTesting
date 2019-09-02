//
//  LocalizableStrings.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/11/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

import Foundation



func Localize(_ key: String) -> String {
  return NSLocalizedString(key, tableName: nil, bundle: .resources, value: "", comment: "")
}
