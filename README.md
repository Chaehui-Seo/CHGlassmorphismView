# CHGlassmorphismView
![frontPhoto](https://user-images.githubusercontent.com/73422344/224745495-d3280067-b278-4ea0-846c-9237a1b14b13.png)
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
### Import the framework
Import `CHGlassmorphismView` module to your controller

```swift
import CHGlassmorphismView
```
    
### Create glassmorphismView
You can create glassmorphism view programmatically like code below, or make existing UIView as glassmorphism view by changing the Custom Class to `CHGlassmorphismView`

```swift
let glassmorphismView = CHGlassmorphismView()
```

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
