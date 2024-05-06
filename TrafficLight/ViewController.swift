//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей Ордынский on 04.05.2024.
//

import UIKit

class ViewController: UIViewController {
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


}
