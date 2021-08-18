//
//  ViewController.swift
//  TrafficLight
//
//  Created by user202124 on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 100
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 100
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 100
        greenView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
    }
    
    
    @IBAction func clickButton() {
        startButton.setTitle("NEXT", for: .normal)
        if redView.alpha == 0.30000001192092896 && yellowView.alpha == 0.30000001192092896
            && greenView.alpha == 0.30000001192092896 {
            redView.alpha = 1
        } else if yellowView.alpha == 0.30000001192092896 && redView.alpha == 1
            && greenView.alpha == 0.30000001192092896 {
            yellowView.alpha = 1
            redView.alpha = 0.30000001192092896
        } else if greenView.alpha == 0.30000001192092896 && yellowView.alpha == 1 {
            redView.alpha = 0.30000001192092896
            yellowView.alpha = 0.30000001192092896
            greenView.alpha = 1
        } else if greenView.alpha == 1 && redView.alpha == 0.30000001192092896 && yellowView.alpha == 0.30000001192092896 {
            greenView.alpha = 0.30000001192092896
            redView.alpha = 1
        }
    }
}
