//
//  ViewController.swift
//  Course 2 HW 1
//
//  Created by Даниил Петров on 31.07.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        greenLight.alpha = 0.4
        yellowLight.alpha = 0.4
        redLight.alpha = 0.4
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: Any) {

        if yellowLight.alpha == redLight.alpha && greenLight.alpha == redLight.alpha {
            startButton.setTitle("Next", for: .normal)
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.4
        } else if yellowLight.alpha == 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.4
        } else if greenLight.alpha == 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.4
        }
    }
    
}

