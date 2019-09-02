//
//  WalletTextField.swift
//  CustomerApp
//
//  Created by Luciano Sugiura on 28/09/16.
//  Copyright © 2016 RockSpoon. All rights reserved.
//

import UIKit

class WalletTextField: UITextField {
  
  var currentKeyboardAppearance: UIKeyboardAppearance = .default
  var autocorrection: UITextAutocorrectionType = .no
  
  // TODO: swift_4_migration
  var textAttributes: [NSAttributedString.Key: Any]?
  
  // TODO: swift_4_migration
  func configureInputView(newInputView: UIView) {
    
  }
  
  //-----------------------------------------------------------------------------
  // MARK: - TextInput
  //-----------------------------------------------------------------------------
  
  var view: UIView { return self }
  
  var currentText: String? {
    get { return text }
    set { self.text = newValue }
  }
  
  weak var textInputDelegate: UITextViewDelegate?
  
  var currentSelectedTextRange: UITextRange?
  
  var currentBeginningOfDocument: UITextPosition?
  
  var contentInset: UIEdgeInsets = .zero
  
  func changeReturnKeyType(with newReturnKeyType: UIReturnKeyType) {
    
  }
  
  func currentPosition(from: UITextPosition, offset: Int) -> UITextPosition? {
    return nil
  }
  
  func changeClearButtonMode(with newClearButtonMode: UITextField.ViewMode) {
    
  }
  
  //-----------------------------------------------------------------------------
  // MARK: - Private properties
  //-----------------------------------------------------------------------------
  
  fileprivate let defaultPadding: CGFloat = -16
  
  fileprivate var rightViewPadding: CGFloat
  
  fileprivate var disclosureButtonAction: (() -> ())?
  
  override init(frame: CGRect) {
    self.rightViewPadding = defaultPadding
    
    super.init(frame: frame)
    
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    self.rightViewPadding = defaultPadding
    
    super.init(coder: aDecoder)
    
    setup()
  }
  
  fileprivate func setup() {
    delegate = self
    addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
  }
  
  override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
    return super.rightViewRect(forBounds: bounds).offsetBy(dx: rightViewPadding, dy: 0)
  }
  
  func add(disclosureButton button: UIButton, action: @escaping (() -> ())) {
    let selector = #selector(disclosureButtonPressed)
    if disclosureButtonAction != nil, let previousButton = rightView as? UIButton {
      previousButton.removeTarget(self, action: selector, for: .touchUpInside)
    }
    disclosureButtonAction = action
    button.addTarget(self, action: selector, for: .touchUpInside)
    rightView = button
  }
  
  @objc fileprivate func disclosureButtonPressed() {
    disclosureButtonAction?()
  }
  
  @objc fileprivate func textFieldDidChange() {
  }
}

extension WalletTextField: UITextFieldDelegate {
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    //textInputDelegate?.textInputDidBeginEditing(textInput: self)
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    //textInputDelegate?.textInputDidEndEditing(textInput: self)
  }
  
  func textField(_ textField: UITextField,
                 shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool {
    return true
  }
  
  func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    return true
  }
}
