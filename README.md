# CHGlassmorphismView
![glassmorphismExplain](https://user-images.githubusercontent.com/73422344/224549511-73c2c230-ba06-4413-9a9d-6ae32cd0cbd4.png)
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
1. Import `CHGlassmorphismView` module to your controller

    ```swift
    import CHGlassmorphismView
    ```
2. You can create glassmorphismView programmatically like code below, or make existing UIView as glassmorphismView by changing the Custom Class to `CHGlassmorphismView`

    ```swift
	let glassmorphismView = CHGlassmorphismView()
	```
	
