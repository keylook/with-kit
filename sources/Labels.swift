//  Created by Innakentiy Lukin on 9/25/19.
//

import UIKit

open extension UILabel {
  
  @discardableResult
  func uppercased() -> Self {
    text = text?.uppercased()
    return self
  }
  
  @discardableResult
  func capitalized() -> Self {
    text = text?.capitalized
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  
  @discardableResult
  func withFontWeight(_ weight: UIFont.Weight) -> Self {
    font = UIFont.systemFont(ofSize: font.pointSize, weight: weight)
    return self
  }
  
  @discardableResult
  func withText(_ text: String?) -> Self {
    self.text = text
    return self
  }
  
  @discardableResult
  func withAttributedText(_ text: NSAttributedString?) -> Self {
    attributedText = text
    return self
  }
  
  @discardableResult
  func withTextAlignment(_ alignment: NSTextAlignment) -> Self {
    textAlignment = alignment
    return self
  }
  
  @discardableResult
  func withTextColor(_ color: UIColor) -> Self {
    textColor = color
    return self
  }
  
  @discardableResult
  func withNumberOfLines(_ number: Int) -> Self {
    numberOfLines = number
    return self
  }
  
}
