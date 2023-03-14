import UIKit

@IBDesignable
public class CHGlassmorphismView: UIView {
    // MARK: - Properties
    private let animator = UIViewPropertyAnimator(duration: 0.5, curve: .linear)
    private var blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
    private let backgroundView = UIView()
    public override var backgroundColor: UIColor? {
        get {
            return .clear
        }
        set {}
    }
    
    // MARK: - init/deinit
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initialize()
    }
    
    deinit {
        animator.pauseAnimation()
    }
    
    // MARK: - Public Method
    /// Customizes blur density of the view.
    /// - parameters:
    ///     - density:  value between 0 ~ 1 (default: 0.65)
    public func changeBlurDensity(with density: CGFloat) {
        self.animator.fractionComplete = (1 - density)
    }
    
    /// Customizes theme by changing base view's background color.
    /// .light and .dark is available.
    public func setTheme(theme: CHTheme) {
        switch theme {
        case .light:
            self.blurView.backgroundColor = UIColor.clear
            self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        case .dark:
            self.blurView.backgroundColor = UIColor.black.withAlphaComponent(0.45)
            self.layer.borderColor = UIColor.white.withAlphaComponent(0.3).cgColor
        }
    }
    
    /// Changes cornerRadius of the view.
    public func setCornerRadius(_ value: CGFloat) {
        self.backgroundView.layer.cornerRadius = value
        self.backgroundView.layer.shadowRadius = value
        self.blurView.layer.cornerRadius = value
    }
    
    // MARK: - Private Method
    private func initialize() {
        // backgoundView(baseView) setting
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        self.insertSubview(backgroundView, at: 0)
        backgroundView.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        backgroundView.layer.borderWidth = 1
        backgroundView.layer.cornerRadius = 20
        backgroundView.clipsToBounds = true
        backgroundView.layer.masksToBounds = false
        backgroundView.layer.shadowColor = UIColor.black.cgColor
        backgroundView.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroundView.layer.shadowOpacity = 0.2
        backgroundView.layer.shadowRadius = 20.0
        
        // blurEffectView setting
        blurView.layer.masksToBounds = true
        blurView.layer.cornerRadius = 20
        blurView.backgroundColor = UIColor.clear
        blurView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.insertSubview(blurView, at: 0)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.heightAnchor.constraint(equalTo: self.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: self.widthAnchor),
            blurView.topAnchor.constraint(equalTo: self.topAnchor),
            blurView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blurView.heightAnchor.constraint(equalTo: self.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])
        
        // add animation for managing density
        animator.addAnimations {
            self.blurView.effect = nil
        }
        animator.fractionComplete = 0.35 // default value is 0.35
    }
    
    // MARK: - Theme
    public enum CHTheme {
        case light
        case dark
    }
}
