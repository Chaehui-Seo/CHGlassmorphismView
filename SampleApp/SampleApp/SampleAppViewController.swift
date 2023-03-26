//
//  ViewController.swift
//  SampleApp
//
//  Created by chaehseo-MN on 2023/03/23.
//

import UIKit
import CHGlassmorphismView

class SampleAppViewController: UIViewController {
    // MARK: - Properties
    // safeArea
    @IBOutlet weak var imageTop: NSLayoutConstraint!
    @IBOutlet weak var imageBottom: NSLayoutConstraint!
    // testTarget (CHGlassmorphismView)
    @IBOutlet weak var glassmorphismView: CHGlassmorphismView!
    // setting component
    @IBOutlet weak var densitySlider: UISlider!
    @IBOutlet weak var cornerSlider: UISlider!
    @IBOutlet weak var distanceSlider: UISlider!
    @IBOutlet weak var lightModeSwitch: UISwitch!
    @IBOutlet weak var resetButton: UIButton!
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initValues()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageTop.constant = -(self.view.safeAreaInsets.top)
        imageBottom.constant = -(self.view.safeAreaInsets.bottom)
    }
    
    // MARK: - Set UI
    func initValues() {
        densitySlider.minimumValue = 0
        densitySlider.maximumValue = 1
        densitySlider.value = 0.65
        cornerSlider.minimumValue = 0
        cornerSlider.maximumValue = 100
        cornerSlider.value = 20
        distanceSlider.minimumValue = 0
        distanceSlider.maximumValue = 100
        distanceSlider.value = 20
        lightModeSwitch.isOn = true
    }

    // MARK: - Change GlassmorphismView Setting
    @IBAction func densityValueChanged(_ sender: Any) {
        let densityValue = CGFloat(densitySlider.value)
        glassmorphismView.changeBlurDensity(with: densityValue)
    }
    
    @IBAction func cornerValueChanged(_ sender: Any) {
        let cornerValue = CGFloat(cornerSlider.value)
        glassmorphismView.setCornerRadius(cornerValue)
    }
    
    @IBAction func distanceValueChanged(_ sender: Any) {
        let distanceValue = CGFloat(distanceSlider.value)
        glassmorphismView.setDistance(distanceValue)
    }
    
    @IBAction func modeValueChanged(_ sender: Any) {
        if lightModeSwitch.isOn {
            // light mode
            glassmorphismView.setTheme(theme: .light)
        } else {
            // dark mode
            glassmorphismView.setTheme(theme: .dark)
        }
    }
    
    @IBAction func resetButtonDidTap(_ sender: Any) {
        densitySlider.value = 0.65
        glassmorphismView.changeBlurDensity(with: 0.65)
        cornerSlider.value = 20
        glassmorphismView.setCornerRadius(20)
        distanceSlider.value = 20
        glassmorphismView.setDistance(20)
        lightModeSwitch.isOn = true
        glassmorphismView.setTheme(theme: .light)
    }
}

