import UIKit

var activityView: UIView?

extension UIViewController {
  
  func showActivity() {
    activityView = UIView(frame: UIScreen.main.bounds)
      .withBackgroundColor(UIColor.Grays.dark.withAlphaComponent(0.2))
    
    let indicator = UIActivityIndicatorView(style: .whiteLarge)
    indicator.color = UIColor.Primary.darkBlue
    indicator.startAnimating()
    
    let indicatorContainer = UIView()
    
    let blur = UIBlurEffect(style: .regular)
    let blurContainer = UIVisualEffectView(effect: blur)
      .withCornerRadius(15)
      .withBoundsClipping(true)
    
    indicatorContainer.addSubview(blurContainer)
    blurContainer.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    
    indicatorContainer.addSubview(indicator)
    indicator.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
    indicatorContainer.layer.cornerRadius = 15
    indicator.clipsToBounds = true
    
    activityView?.addSubview(indicatorContainer)
    indicatorContainer.snp.makeConstraints { make in
      make.center.equalToSuperview()
      make.size.equalTo(125)
    }
    
    DispatchQueue.main.async {
      if let activity = activityView {
        UIApplication.shared.keyWindow?.addSubview(activity)
      }
    }
  }
  
  func hideActivity() {
    activityView?.removeFromSuperview()
    activityView = nil
  }
  
  func showLoadingState(_ loading: Bool) {
    if loading {
      showActivity()
    } else {
      hideActivity()
    }
  }
  
}
