# FunctionalKit
This is a small but handy library that extends `UIKit` in a functional manner.
Inspired by `SwiftUI` and declarative paradigm.

Currently supported `UIKit` Extensions:
`UIView`, `UILabel`, `UITextField`

Example usage for `UILabel`
```swift
let label = UILabel()
  .withTextColor(.black)
  .withFont(.systemFontOfSize(14))
  .withText("My Label")
  .withTextAlignment(.center)
```

Example for `FKButton` and `.withTapBlock`
```swift
lazy var myButton = FKButton
    .withBackgroundColor(UIColor.white)
    .withTint(UIColor.black)
    .withCornerRadius(18)
    .withImage(Assets.myButtonIcon)
    .withTapBlock(handleButtonTap)
    
func handleButtonTap() {
  // do something
}
```
Example for `UITextField`
```swift 
let emailTextField = UITextField()
  .withPlaceholder("Email")
  .withKeyboard(.emailAddress)
  .withAutoCorrect(.no)
  .withAutoCapitalization(.none)

let passwordField = UITextField()
  .withPlaceholder("Password")
  .withAutoCorrect(.no)
  .withAutoCapitalization(.none)
  .withSecureTextEntry(true)
  
```



# Installation
Drop `sources` folder in your project. More installation options are coming.

This library is work in progress.
