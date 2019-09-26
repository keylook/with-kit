# FunctionalKit
This is a small but handy library that extends `UIKit` in a functional manner.
Inspired by `SwiftUI` and declarative paradigm.

Currently supported `UIKit` Extensions:
`UIView`, `UILabel`

Example usage for `UILabel`
```swift
let label = UILabel()
  .withTextColor(.black)
  .withFont(.systemFontOfSize(14))
  .withText("My Label")
  .withTextAlignment(.center)
```

Advanced example for `FKButton` 
```swift
class MyView: UIView {
...
var onButtonAction: VoidBlock?

lazy var myButton = FKButton
    .withBackgroundColor(UIColor.white)
    .withTint(UIColor.black)
    .withCornerRadius(18)
    .withImage(Assets.myButtonIcon)
    .withTapBlock(onButtonAction)
...
}
```

# Installation
Drop `sources` folder in your project. More installation options are coming.

This library is work in progress.
