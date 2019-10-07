//  Created by Innakentiy Lukin on 9/25/19.
//

import UIKit

// MARK: Common

open extension UIView {
  
  @discardableResult
  func withUserInteractionEnabled(_ enabled: Bool) -> Self {
    self.isUserInteractionEnabled = enabled
    return self
  }
  
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
  func withBorder(width: CGFloat, color: UIColor?) -> Self {
    return self.withBorderColor(color).withBorderWidth(width)
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
  
  @discardableResult
  func withTag(_ tag: Int) -> Self {
    self.tag = tag
    return self
  }
}

// MARK: Layer

open extension UIView {
  
  /// The color of the layer’s shadow. Animatable.
  ///
  /// The default value of this property is an opaque black color.
  @discardableResult
  func withShadowColor(_ color: UIColor?) -> Self {
    layer.shadowColor = color?.cgColor
    return self
  }
  
  /// The offset (in points) of the layer’s shadow. Animatable.
  ///
  /// The default value of this property is (0.0, -3.0).
  @discardableResult
  func withShadowOffset(_ offset: CGSize) -> Self {
    layer.shadowOffset = offset
    return self
  }
  
  /// The blur radius (in points) used to render the layer’s shadow.
  ///
  /// The default value of this property is 3.0.
  @discardableResult
  func withShadowRadius(_ radius: CGFloat) -> Self {
    layer.shadowRadius = radius
    return self
  }
  
  @discardableResult
  func withShadowPath(_ path: CGPath?) -> Self {
    layer.shadowPath = path
    return self
  }
  
  /// The value in this property must be in the range 0.0 (transparent) to 1.0 (opaque). The default value of this property is 0.0.
  @discardableResult
  func withShadowOpacity(_ opacity: Float) -> Self {
    layer.shadowOpacity = opacity
    return self
  }
  
  @discardableResult
  func withBorderColor(_ color: UIColor?) -> Self {
    layer.borderColor = color?.cgColor
    return self
  }
  
  /// When this value is greater than 0.0, the layer draws a border using the current borderColor value. The border is drawn inset from the receiver’s bounds by the value specified in this property. It is composited above the receiver’s contents and sublayers and includes the effects of the cornerRadius property.
  /// The default value of this property is 0.0.
  @discardableResult
  func withBorderWidth(_ width: CGFloat) -> Self {
    layer.borderWidth = width
    return self
  }
  
}
