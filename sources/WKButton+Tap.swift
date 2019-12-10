import UIKit

typealias VoidBlock = () -> Void

extension WKButton {
  
  @discardableResult
  func withTapBlock(_ block: VoidBlock?) -> Self {
    onTap = {
      block?()
    }
    return self
  }
  
}
