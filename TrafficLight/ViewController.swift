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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = 64
        yellowTrafficLight.layer.cornerRadius = 64
        greenTrafficLight.layer.cornerRadius = 64
        startTrafficLightButton.layer.cornerRadius = 10
    }

    @IBAction func startTrafficLight() {
        let maxBrightness: CGFloat = 1
        
        switch maxBrightness {
        case redTrafficLight.alpha:
            yellowTrafficLight.alpha = 1
            redTrafficLight.alpha = 0.3
        case yellowTrafficLight.alpha:
            greenTrafficLight.alpha = 1
            yellowTrafficLight.alpha = 0.3
        case greenTrafficLight.alpha:
            redTrafficLight.alpha = 1
            greenTrafficLight.alpha = 0.3
        default:
            redTrafficLight.alpha = 1
        }
        
        changeNameButton()
    }
    
    private func changeNameButton() {
        if self.startTrafficLightButton.titleLabel?.text == "START" {
            self.startTrafficLightButton.setTitle("NEXT",for: .normal)
        }
    }
}
