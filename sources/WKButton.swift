import UIKit

open class WKButton: UIButton {
  
  public var onTap: VoidBlock?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addTarget(self, action: #selector(handleTap), for: .touchUpInside)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func handleTap() {
    guard isUserInteractionEnabled else { return }
    onTap?()
  }
}

extension WKButton {
  
  @discardableResult
  func withTapBlock(_ block: VoidBlock?) -> Self {
    onTap = {
      block?()
    }
    return self
  }
  
}

