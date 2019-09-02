//
//  Button.swift
//  CustomerApp
//
//  Created by mac-246 on 19.04.16.
//  Copyright © 2016 RockSpoon. All rights reserved.
//

import UIKit

private let highlightedAlpha: CGFloat = 0.499
private let overlayAlpha: CGFloat = 0.5

private func isCGFloatsEqual(first: CGFloat, second: CGFloat) -> Bool {
  if abs(first - second) < 0.0001 {
    return true
  } else {
    return false
  }
}

class Button: UIButton {
  
  //-----------------------------------------------------------------------------
  // MARK: - @IBOutlet
  //-----------------------------------------------------------------------------
  
  @IBOutlet var dependentViews: [UIView]?
  
  //-----------------------------------------------------------------------------
  // MARK: - Public properties
  //-----------------------------------------------------------------------------
  
  override var isHighlighted: Bool {
    didSet {
      configureHighlight(isHighlighted: isHighlighted)
      configureHighlightForDependentViews(isHighlighted: isHighlighted)
    }
  }
  
  @IBInspectable var hasHighlightedOverlay: Bool = false
  
  @IBInspectable var overlayColor: UIColor? {
    get {
      return overlayView.backgroundColor
    }
    set {
      overlayView.backgroundColor = newValue
    }
  }
  
  //-----------------------------------------------------------------------------
  // MARK: - Private properties
  //-----------------------------------------------------------------------------
  
  fileprivate var animatingViewsOriginalAlphas = [UIView: CGFloat]()
  fileprivate let activityIndicator = UIActivityIndicatorView(style: .gray)
  fileprivate var buttonImage: UIImage?
  fileprivate let overlayView = UIView()
  
  //-----------------------------------------------------------------------------
  // MARK: - Initialization
  //-----------------------------------------------------------------------------
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    configure()
  }
  
  override func awakeFromNib() {
    activityIndicator.color = layer.borderColor.map { UIColor(cgColor: $0) }
  }
  
  //-----------------------------------------------------------------------------
  // MARK: - Public methods
  //-----------------------------------------------------------------------------
  
  func startAnimating() {
    isUserInteractionEnabled = false
    isHighlighted = false
    
    if let dependentViews = dependentViews {
      animatingViewsOriginalAlphas = [:]
      for view in dependentViews {
        animatingViewsOriginalAlphas[view] = view.alpha
        view.alpha = 0
      }
    }
    
    buttonImage = imageView?.image
    setImage(nil, for: UIControl.State())
    titleLabel?.alpha = 0
    activityIndicator.startAnimating()
  }
  
  func stopAnimating() {
    for (view, alpha) in animatingViewsOriginalAlphas {
      view.alpha = alpha
    }
    animatingViewsOriginalAlphas = [:]
    
    if let buttonImage = buttonImage {
      setImage(buttonImage, for: UIControl.State())
      self.buttonImage = nil
    }
    titleLabel?.alpha = 1
    
    activityIndicator.stopAnimating()
    isUserInteractionEnabled = true
  }
  
  func setHighlight(_ highlight: Bool, ignoreDependentViews: Bool) {
    configureHighlight(isHighlighted: highlight)
    
    if !ignoreDependentViews {
      configureHighlightForDependentViews(isHighlighted: highlight)
    }
  }
  
  //-----------------------------------------------------------------------------
  // MARK: - Private methods
  //-----------------------------------------------------------------------------
  
  fileprivate func configure() {
    adjustsImageWhenHighlighted = false
    
    addSubview(overlayView)
    overlayView.frame = bounds
    overlayView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    overlayView.alpha = 0
    
    addSubview(activityIndicator)
    activityIndicator.isHidden = true
    activityIndicator.hidesWhenStopped = true
    activityIndicator.center = CGPoint(x: bounds.midX, y: bounds.midY)
    let msk: UIView.AutoresizingMask = [.flexibleBottomMargin, .flexibleLeftMargin, .flexibleTopMargin, .flexibleRightMargin]
    activityIndicator.autoresizingMask = msk
  }
  
  fileprivate func configureHighlight(isHighlighted: Bool) {
    if hasHighlightedOverlay {
      let newAlpha = isHighlighted ? overlayAlpha : 0
      
      overlayView.alpha = newAlpha
    } else {
      let newAlpha = isHighlighted ? highlightedAlpha : 1
      let oldAlpha = isHighlighted ? 1 : highlightedAlpha
      
      if isCGFloatsEqual(first: alpha, second: oldAlpha) {
        alpha = newAlpha
      }
    }
  }
  
  fileprivate func configureHighlightForDependentViews(isHighlighted: Bool) {
    guard let dependentViews = dependentViews else { return }
    
    let newAlpha = isHighlighted ? highlightedAlpha : 1
    let oldAlpha = isHighlighted ? 1 : highlightedAlpha
    
    for view in dependentViews {
      if let button = view as? Button {
        button.setHighlight(isHighlighted, ignoreDependentViews: true)
      } else {
        if isCGFloatsEqual(first: view.alpha, second: oldAlpha) {
          view.alpha = newAlpha
        }
      }
    }
  }
}

