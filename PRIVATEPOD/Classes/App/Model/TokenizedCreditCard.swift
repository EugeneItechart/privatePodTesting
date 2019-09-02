//
//  TokenizedCreditCard.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/11/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

import Foundation

public struct TokenizedCreditCard {
  public let token: Token
  public let type: CardType
  public let alias: String
  public let isDefault: Bool
  public let lastFourDigits: String
  public let expirationDate: String
}
