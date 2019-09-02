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

    private let doneBar: UIToolbar = {
    $0.sizeToFit()
    let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    let done = UIBarButtonItem(title: Localize("Done"), style: .done, target: self, action: #selector(dismissInput))
    $0.setItems([space, done], animated: false)
    return $0
  }(UIToolbar())

    override func viewDidLoad() {
    super.viewDidLoad()
  }

    @objc
    func dismissInput() {
        //
    }
}
