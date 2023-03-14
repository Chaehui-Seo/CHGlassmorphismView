# CHGlassmorphismView
![frontPhoto](https://user-images.githubusercontent.com/73422344/224745495-d3280067-b278-4ea0-846c-9237a1b14b13.png)
Glassmorphism is a design style using a background blur effect, which makes the view look like a floating translucent glass.
### ⚠️ still in progress ⚠️

## Requirements
- iOS 11.0+

## Installation
Use [Swift Package Manager](https://swift.org/package-manager/) by adding following line to `Package.swift`:
```
dependencies: [
 .package(url: "https://github.com/Chaehui-Seo/CHGlassmorphismView.git", from: "0.0.1")
]
```

## Usage
### Create glassmorphismView
METHOD #1 <br>
Import `CHGlassmorphismView` module to your controller. Now, you can create glassmorphism view programmatically like code below.

```swift
import CHGlassmorphismView

let glassmorphismView = CHGlassmorphismView()
```
<br>
METHOD #2<br>
Or make existing UIView as glassmorphism view by changing the Custom Class to `CHGlassmorphismView`
<img width="700" alt="storyboard" src="https://user-images.githubusercontent.com/73422344/225058917-118067e4-eaab-4a3f-ac72-326ac5d203d0.png"> <br>

### Change customizing options
```swift
// MARK: - [Theme]
glassmorphismView.setTheme(theme: .light) // choose theme .light or .dark
```
| Light theme | dark theme |
| :-: | :-: |
| <img src="https://user-images.githubusercontent.com/73422344/224743779-0b29a653-5d8c-409a-b9a2-355f933521e7.png" width=250> | <img src="https://user-images.githubusercontent.com/73422344/224717507-192408ee-7bec-4297-be67-ec943307cc41.png" width=250> |

```swift
// MARK: - [Blur Density]
glassmorphismView.changeBlurDensity(with: 0.5) // value from 0 to 1 is available
```
```swift
// MARK: - [Corner Radius]
glassmorphismView.setCornerRadius(30) // change cornerRadius as you want (default value is 20)
```

## Caution
Be aware that any views underneath blurred view got affected by glassmorphism effect. That means if some views are inserted before blurred view, it would not be visible as expected.
Do not insert any views at 0 if you don’t want the elements to be dimmed
```swift
// DO ⭕️
glassmorphismView.addSubview(yourOwnView)

// DO NOT ❌
glassmorphismView.insertSubview(yourOwnView, at: 0)
```
