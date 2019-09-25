//  Created by Innakentiy Lukin on 9/25/19.
//

import UIKit

open extension UILabel {
  
  @discardableResult
  func uppercased() -> UILabel {
    text = text?.uppercased()
    return self
  }
  
  @discardableResult
  func capitalized() -> UILabel {
    text = text?.capitalized
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> UILabel {
    self.font = font
    return self
  }
  
  @discardableResult
  func withFontWeight(_ weight: UIFont.Weight) -> UILabel {
    font = UIFont.systemFont(ofSize: font.pointSize, weight: weight)
    return self
  }
  
  @discardableResult
  func withText(_ text: String?) -> UILabel {
    self.text = text
    return self
  }
  
  @discardableResult
  func withTextAlignment(_ alignment: NSTextAlignment) -> UILabel {
    textAlignment = alignment
    return self
  }
  
  @discardableResult
  func withTextColor(_ color: UIColor) -> UILabel {
    textColor = color
    return self
  }
  
  @discardableResult
  func withNumberOfLines(_ number: Int) -> UILabel {
    numberOfLines = number
    return self
  }
  
}
