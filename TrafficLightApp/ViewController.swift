//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Максим Бондаренко on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var currentLight: Int = 0
    
    let lightOn: CGFloat = 1.0
    let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        redLightView.alpha = lightOff
        
        yellowLightView.layer.cornerRadius = 50
        yellowLightView.alpha = lightOff
        
        greenLightView.layer.cornerRadius = 50
        greenLightView.alpha = lightOff
        
        startButton.layer.cornerRadius = 12
        startButton.setTitle("Start", for: .normal)
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        if currentLight == 0 {
            redLightView.alpha = lightOn
            startButton.setTitle("Next", for: .normal)
            currentLight = 1
        } else if currentLight == 1 {
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
            currentLight = 2
        } else if currentLight == 2 {
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
            currentLight = 3
        } else {
            greenLightView.alpha = lightOff
            startButton.setTitle("Start", for: .normal)
            currentLight = 0
        }
    }
    
}

