import UIKit

open class WKButton: UIButton {
  
  public var onTap: VoidBlock?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addTarget(self, action: #selector(handleTap), for: .touchUpInside)
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc
  private func handleTap() {
    guard isUserInteractionEnabled else { return }
    onTap?()
  }
}

extension WKButton {
  
  @discardableResult
  func withTapHandler(_ handler: VoidBlock?) -> Self {
    onTap = {
      handler?()
    }
    return self
  }
  
}

