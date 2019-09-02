//
//  EditCreditCardViewController.swift
//  Tokenization
//
//  Created by Rossine de Souza Pinto on 4/3/19.
//

import UIKit

final class EditCreditCardViewController: UIViewController {
  @IBOutlet private var cardIconImageView: UIImageView!
  @IBOutlet private var cardNumberTextInput: UITextField!
  @IBOutlet private var goodThruTextInput: UITextField!
  @IBOutlet private var cvcTextInput: UITextField!
  @IBOutlet private var cardAliasTextInput: UITextField!
  @IBOutlet private var isDefaultSwitch: UISwitch!
  @IBOutlet private var scanButton: UIButton!
  @IBOutlet private var saveButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

         let cardIcon = Image.genericCreditCard
    }
}
