//
//  TokenProviderCredential.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/21/19.
//

import Foundation

public protocol TokenProviderCredential {
  var username: String { get }
  var password: String { get }
}
