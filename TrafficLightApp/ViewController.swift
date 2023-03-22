//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Максим Бондаренко on 19.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight: Int = 0
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
        
        startButton.layer.cornerRadius = 12
        startButton.setTitle("Start", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
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

