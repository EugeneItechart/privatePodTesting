//
//  TokenizationCoordinator.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 2/11/19.
//  Copyright © 2019 Rockspoon Inc. All rights reserved.
//

public final class TokenizationCoordinator {
  
  public weak var navigationController: UINavigationController?
  let credentials: [String]

  public init(navigationController: UINavigationController,
              credentials: [String]) {
    self.navigationController = navigationController
    self.credentials = credentials
  }
  
  public func start() {
    let bundle = Bundle(for: TokenizationCoordinator.self)
    let storyboard = UIStoryboard(name: "RegisterCreditCard", bundle: bundle)

    guard let editViewController = storyboard.instantiateViewController(withIdentifier: "EditCreditCardViewController")
      as? EditCreditCardViewController
      else { return }
    navigationController?.pushViewController(editViewController, animated: true)
  }
}
