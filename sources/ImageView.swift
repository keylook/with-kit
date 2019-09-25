import UIKIT

extension UIImageView {
  
  @discardableResult
  func withContentMode(_ mode: UIImageView.ContentMode) -> Self {
    contentMode = mode
    return self
  }
  
  @discardableResult
  func withImage(_ image: UIImage?) -> Self {
    self.image = image
    return self
  }
  
}
