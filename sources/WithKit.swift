import UIKit
import SDWebImage

// MARK: - UIView

extension UIView {
  
  @discardableResult
  func withTapGestureRecoginzer(_ target: Any?, selector: Selector?) -> Self {
    let gesture = UITapGestureRecognizer(target: target, action: selector)
    addGestureRecognizer(gesture)
    return self
  }
  
  @discardableResult
  func withGestureRecognizer(_ recoginzer: UIGestureRecognizer) -> Self {
    addGestureRecognizer(recoginzer)
    return self
  }
  
  @discardableResult
  func withSuperView(_ superView: UIView) -> Self {
    superView.addSubview(self)
    return self
  }
    
  @discardableResult
  func withUserInteractionEnabled(_ enabled: Bool) -> Self {
    self.isUserInteractionEnabled = enabled
    return self
  }
  
  @discardableResult
  func withTint(_ color: UIColor) -> Self {
    tintColor = color
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
  
  @discardableResult
  func withBorder(width: CGFloat, color: UIColor?) -> Self {
    return self.withBorderColor(color).withBorderWidth(width)
  }
  
  @discardableResult
  func withAlpha(_ alpha: CGFloat) -> Self {
    self.alpha = alpha
    return self
  }
  
  @discardableResult
  func withBoundsClipping(_ clips: Bool) -> Self {
    clipsToBounds = clips
    return self
  }
  
  @discardableResult
  func withTag(_ tag: Int) -> Self {
    self.tag = tag
    return self
  }
  
  // MARK: - Layer
  
  @discardableResult
  func withRoundCorners(_ corners: UIRectCorner = .allCorners, radius: CGFloat) -> Self {
    
    let roundPath = UIBezierPath(
        roundedRect: bounds,
        byRoundingCorners: corners,
        cornerRadii: CGSize(width: 10, height: 10)
    )
    
    let maskLayer = CAShapeLayer()
    maskLayer.path = roundPath.cgPath
    layer.mask = maskLayer
    return self
  }
  
  @discardableResult
  func withCornerMask(_ mask: CACornerMask, radius: CGFloat) -> Self {
    layer.maskedCorners = mask
    layer.cornerRadius = radius
    return self
  }
  
  @discardableResult
  func withCornerRadius(_ radius: CGFloat) -> Self {
    layer.cornerRadius = radius
    return self
  }
  
  /// The color of the layer’s shadow. Animatable.
  ///
  /// The default value of this property is an opaque black color.
  @discardableResult
  func withShadowColor(_ color: UIColor?) -> Self {
    layer.shadowColor = color?.cgColor
    return self
  }
  
  /// The offset (in points) of the layer’s shadow. Animatable.
  ///
  /// The default value of this property is (0.0, -3.0).
  @discardableResult
  func withShadowOffset(_ offset: CGSize) -> Self {
    layer.shadowOffset = offset
    return self
  }
  
  /// The blur radius (in points) used to render the layer’s shadow.
  ///
  /// The default value of this property is 3.0.
  @discardableResult
  func withShadowRadius(_ radius: CGFloat) -> Self {
    layer.shadowRadius = radius
    return self
  }
  
  @discardableResult
  func withShadowPath(_ path: CGPath?) -> Self {
    layer.shadowPath = path
    return self
  }
  
  /// The value in this property must be in the range 0.0 (transparent) to 1.0 (opaque). The default value of this property is 0.0.
  @discardableResult
  func withShadowOpacity(_ opacity: Float) -> Self {
    layer.shadowOpacity = opacity
    return self
  }
  
  @discardableResult
  func withBorderColor(_ color: UIColor?) -> Self {
    layer.borderColor = color?.cgColor
    return self
  }
  
  /// When this value is greater than 0.0, the layer draws a border using the current borderColor value. The border is drawn inset from the receiver’s bounds by the value specified in this property. It is composited above the receiver’s contents and sublayers and includes the effects of the cornerRadius property.
  /// The default value of this property is 0.0.
  @discardableResult
  func withBorderWidth(_ width: CGFloat) -> Self {
    layer.borderWidth = width
    return self
  }
  
}

// MARK: - UIImageView

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

extension UIControl {
  
  @discardableResult
  func withEnabledState(_ enabled: Bool) -> Self {
    isEnabled = enabled
    return self
  }
  
  @discardableResult
  func withSelectedState(_ selected: Bool) -> Self{
    isSelected = selected
    return self
  }
  
  @discardableResult
  func withHighlightedState(_ highlighted: Bool) -> Self {
    isHighlighted = highlighted
    return self
  }
  
  
  @discardableResult
  func withTarget(_ target: Any?, action: Selector, for event: UIControl.Event) -> Self {
    addTarget(target, action: action, for: event)
    return self
  }
  
  
}


// MARK: - UILabel

extension UILabel {

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
  func lowercased() -> Self {
    text = text?.lowercased()
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  
  @discardableResult
  func withFontSize(_ size: CGFloat) -> Self {
    font = font.withSize(size)
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
  
  @discardableResult
  func withFontAdjustsToFitWidth(_ adjusts: Bool) -> Self {
    adjustsFontSizeToFitWidth = adjusts
    return self
  }
  
  @discardableResult
  func withMinimumScaleFactor(_ factor: CGFloat) -> Self {
    minimumScaleFactor = factor
    return self
  }
  
}

// MARK: - UIButton

extension UIButton {
  
  @discardableResult
  func withTitleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
    setTitleColor(color, for: state)
    return self
  }
  
  @discardableResult
  func withTitle(_ title: String?, for state: UIControl.State = .normal) -> Self {
    setTitle(title, for: state)
    return self
  }
  
  @discardableResult
  func withImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
    setImage(image, for: state)
    return self
  }
  
  @discardableResult
  func withTitleFont(_ font: UIFont) -> Self {
    titleLabel?.font = font
    return self
  }
}



// MARK: - UITableView
extension UITableView {
  
  @discardableResult
  func withDataSource(_ dataSource: UITableViewDataSource?) -> Self {
    self.dataSource = dataSource
    return self
  }
  
  @discardableResult
  func withDelegate(_ delegate: UITableViewDelegate?) -> Self {
    self.delegate = delegate
    return self
  }
  
  @discardableResult
  func withTableFooter(_ view: UIView?) -> Self {
    tableFooterView = view
    return self
  }
  
  @discardableResult
  func withSeparatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
    separatorStyle = style
    return self
  }
  
  @discardableResult
  func withSeparatorColor(_ color: UIColor) -> Self {
    separatorColor = color
    return self
  }
  
  @discardableResult
  func withCell(_ cellClass: AnyClass) -> Self {
    register(cellClass, forCellReuseIdentifier: "\(type(of: cellClass))")
    return self
  }
  
}


// MARK: - UITextField
extension UITextField {
  
  @discardableResult
  func withPlaceholder(_ text: String?) -> Self {
    placeholder = text
    return self
  }
  
  @discardableResult
  func withAutoCorrect(_ type: UITextAutocorrectionType) -> Self {
    autocorrectionType = type
    return self
  }
  
  @discardableResult
  func withAutoCapitalization(_ type: UITextAutocapitalizationType) -> Self {
    autocapitalizationType = type
    return self
  }
  
  @discardableResult
  func withKeyboard(_ type: UIKeyboardType) -> Self {
    keyboardType = type
    return self
  }
  
  @discardableResult
  func withSecureTextEntry(_ secure: Bool) -> Self {
    isSecureTextEntry = secure
    return self
  }

  @discardableResult
  func withText(_ text: String?) -> Self {
    self.text = text
    return self
  }
  
  @discardableResult
  func withTextColor(_ color: UIColor) -> Self {
    textColor = color
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  
}



// MARK: - UIScrollView

extension UIScrollView {
  
  @discardableResult
  func withContentInsetAdjustmentBehavior(_ behaviour: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
    contentInsetAdjustmentBehavior = behaviour
    return self
  }
  
  @discardableResult
  func withContentInset(_ inset: UIEdgeInsets) -> Self {
    contentInset = inset
    return self
  }
  
  @discardableResult
  func withContentOffset(_ offset: CGPoint) -> Self {
    contentOffset = offset
    return self
  }
  
  @discardableResult
  func withVerticalScrollIndicator(_ shown: Bool) -> Self {
    showsVerticalScrollIndicator = shown
    return self
  }
  
  @discardableResult
  func withHorizontalScrollIndicator(_ shown: Bool) -> Self {
    showsHorizontalScrollIndicator = shown
    return self
  }
  
  @discardableResult
  func withBouncing(_ enabled: Bool) -> Self {
    bounces = enabled
    return self
  }
  
  @discardableResult
  func withVerticalBouncing(_ enabled: Bool) -> Self {
    alwaysBounceVertical = enabled
    return self
  }
  
  @discardableResult
  func withHorizontalBouncing(_ enabled: Bool) -> Self {
    alwaysBounceHorizontal = enabled
    return self
  }
  
}


// MARK: - UITextView

extension UITextView {
  
  @discardableResult
  func withLinePadding(_ padding: CGFloat) -> Self {
    textContainer.lineFragmentPadding = padding
    return self
  }
  
  @discardableResult
  func withTextContainerInset(_ inset: UIEdgeInsets) -> Self {
    textContainerInset = inset
    return self
  }
  
  @discardableResult
  func withEditingState(_ enabled: Bool) -> Self {
    isEditable = enabled
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> Self {
    self.font = font
    return self
  }
  
  @discardableResult
  func withTextColor(_ color: UIColor?) -> Self {
    textColor = color
    return self
  }
  
  @discardableResult
  func withScrolling(_ enabled: Bool) -> Self {
    isScrollEnabled = enabled
    return self
  }
  
  @discardableResult
  func wihtDataDetecting(_ types: UIDataDetectorTypes) -> Self {
    dataDetectorTypes = types
    return self
  }
  
}

// MARK: - UIStackView

extension UIStackView {
  
  @discardableResult
  func withAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
    self.axis = axis
    return self
  }
  
  @discardableResult
  func withSpacing(_ spacing: CGFloat) -> Self {
    self.spacing = spacing
    return self
  }
  
  @discardableResult
  func withDistribution(_ distribution: UIStackView.Distribution) -> Self {
    self.distribution = distribution
    return self
  }
  
  @discardableResult
  func withAlignment(_ alignment: UIStackView.Alignment) -> Self {
    self.alignment = alignment
    return self
  }
  
  @discardableResult
  func withArrangedSubview(_ view: UIView) -> Self {
    addArrangedSubview(view)
    return self
  }
  
}

// MARK: - UISlider

public extension UISlider {
  
  @discardableResult
  func withTrackTint(_ color: UIColor) -> Self {
    maximumTrackTintColor = color
    return self
  }
  
  @discardableResult
  func withValue(_ value: Float) -> Self {
    self.value = value
    return self
  }
  
}

// MARK: - NSAttributedString

extension NSMutableAttributedString {
  
  @discardableResult
  func withColor(_ color: UIColor) -> Self {
    
    let range = self.mutableString.range(of: string)
    addAttribute(.foregroundColor, value: color, range: range)
    return self
  }
  
  @discardableResult
  func withFont(_ font: UIFont) -> Self {
    let range = self.mutableString.range(of: string)
    addAttribute(.font, value: font, range: range)
    return self
  }

}



// MARK: - SnapKit Required -

extension UIView {
  
  @discardableResult
  func withHairlineHeight() -> Self {
    let height = 1.0 / UIScreen.main.scale
    snp.makeConstraints { make in
      make.height.equalTo(height)
    }
    return self
  }
  
  @discardableResult
  func withHeight(_ height: CGFloat) -> Self {
    snp.makeConstraints { make in
      make.height.equalTo(height)
    }
    return self
  }
  
  @discardableResult
  func withWidth(_ width: CGFloat) -> Self {
    snp.makeConstraints { make in
      make.width.equalTo(width)
    }
    return self
  }
  
  @discardableResult
  func withSize(_ size: CGSize) -> Self {
    snp.makeConstraints { make in
      make.size.equalTo(size)
    }
    return self
  }
  
  @discardableResult
  func withSize(_ size: CGFloat) -> Self {
    snp.makeConstraints { make in
      make.size.equalTo(size)
    }
    return self
  }
  
}

// MARK: - SDWebImage Required -

extension UIImageView {
  
  @discardableResult
  func withImageUrl(_ url: URL?) -> Self {
    self.sd_setImage(with: url)
    return self
  }
  
}
