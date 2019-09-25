//  Created by Innakentiy Lukin on 9/25/19.
//

import UIKit

// MARK: Common

open extension UIView {
  
  @discardableResult
  func withTint(_ color: UIColor) -> Self {
    tintColor = color
    return self
  }
  
  @discardableResult
  func withBackgroundColor(_ color: UIColor) -> Self {
    backgroundColor = color
    return self
  }
  
  @discardableResult
  func withHiddenState(_ hidden: Bool) -> Self {
    isHidden = hidden
    return self
  }
  
  @discardableResult
  func withAlpha(_ alpha: CGFloat) -> Self {
    self.alpha = alpha
    return self
  }
  
  @discardableResult
  func withBoundsClipping(_ clips: Bool) -> Self {
    clipsToBounds = clips
    return self
  }
  
}

// MARK: Layer

open extension UIView {
  
  @discardableResult
  func withCornerRadius(_ radius: CGFloat) -> Self {
    layer.cornerRadius = radius
    return self
  }
  
  @discardableResult
  func withBorder(width: CGFloat, color: UIColor?) -> Self {
    return self.withBorderColor(color).withBorderWidth(width)
  }
  
  @discardableResult
  func withBorderColor(_ color: UIColor?) -> Self {
    layer.borderColor = color?.cgColor
    return self
  }
  
  @discardableResult
  func withBorderWidth(_ width: CGFloat) -> Self {
    layer.borderWidth = width
    return self
  }
  
}
