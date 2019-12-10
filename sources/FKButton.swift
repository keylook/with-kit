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
  
  @objc 
  private func handleTap() {
    guard isUserInteractionEnabled else { return }
    onTap?()
  }
}
