//  Created by Innakentiy Lukin on 9/25/19.
//

import UIKit

open extension UIView {
  
  @discardableResult
  func withTint(_ color: UIColor) -> Self {
    tintColor = color
    return self
  }
  
  @discardableResult
  func withCornerRadius(_ radius: CGFloat) -> Self {
    layer.cornerRadius = radius
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
  
  
}
