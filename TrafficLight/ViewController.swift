//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Ордынский on 04.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var startTrafficLightButton: UIButton!
    
    let maxBrightness: CGFloat = 1
    let minBrightness: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.size.height / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.size.height / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.size.height / 2
        startTrafficLightButton.layer.cornerRadius = 10
    }

    @IBAction func startTrafficLight() {
        switch maxBrightness {
        case redTrafficLight.alpha:
            yellowTrafficLight.alpha = maxBrightness
            redTrafficLight.alpha = minBrightness
        case yellowTrafficLight.alpha:
            greenTrafficLight.alpha = maxBrightness
            yellowTrafficLight.alpha = minBrightness
        case greenTrafficLight.alpha:
            redTrafficLight.alpha = maxBrightness
            greenTrafficLight.alpha = minBrightness
        default:
            redTrafficLight.alpha = maxBrightness
        }
        
        changeNameButton()
    }
    
    private func changeNameButton() {
        if startTrafficLightButton.titleLabel?.text == "START" {
            startTrafficLightButton.setTitle("NEXT",for: .normal)
        }
    }
}
