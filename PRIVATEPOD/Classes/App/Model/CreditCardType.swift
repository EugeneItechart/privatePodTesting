//
//  CreditCardType.swift
//  CustomerApp
//
//  Created by Eugene Bessilko on 01/02/2019.
//  Copyright © 2019 RockSpoon. All rights reserved.
//

public enum CardType: String, Codable, CaseIterable {
  case amex = "amex"
  case diners = "diners"
  case discover = "discover"
  case jcb = "jcb"
  case masterCard = "masterCard"
  case rockspoonTestCard = "rockspoonTestCard"
  case visa = "visa"
}

extension CardType {
  var icon: UIImage {
    switch self {
    case .amex: return Image.amex
    case .diners: return Image.diners
    case .discover: return Image.discover
    case .jcb: return Image.jcb
    case .masterCard: return Image.masterCard
    case .rockspoonTestCard: return Image.creditCardPlaceholder
    case .visa: return Image.visa
    }
  }
}
