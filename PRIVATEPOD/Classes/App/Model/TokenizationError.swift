//
//  TokenizationError.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/7/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

import Foundation

public enum TokenizationError: Error {
  case tokenizationFailed(message: String)
  case invalidParameters
  case deallocated
  
  var localizedDescription: String {
    switch self {
    case .tokenizationFailed(message: let message):
      return "Tokenization has failed: \(message)"
    case .invalidParameters:
      return "Credit card information is incorrect"
    case .deallocated:
      return "The token provider was deallocated"
    }
  }
}
