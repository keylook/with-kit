import UIKit

typealias VoidBlock = () -> Void

extension FKButton {
  
  @discardableResult
  func withTapBlock(_ block: VoidBlock?) -> Self {
    onTap = {
      block?()
    }
    return self
  }
  
}
