//
//  ViewController.swift
//  leson-1-2
//
//  Created by Людмила Бригаднова on 30.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var grenView: UIView!
    @IBOutlet weak var srartButton: UIButton!
    
    var signalCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        grenView.alpha = 0.3
        
        let radius = redView.frame.width / 2
        
        redView.layer.cornerRadius = radius
        yellowView.layer.cornerRadius = radius
        grenView.layer.cornerRadius = radius
        
    }

    
    @IBAction func startButtonPress() {
        srartButton.setTitle("NEXT", for: .normal)
        
        if signalCount > 3 {
            signalCount = 1
        }
        
        redView.alpha = signalCount == 1 ? 1 : 0.3
        yellowView.alpha = signalCount == 2 ? 1 : 0.3
        grenView.alpha = signalCount == 3 ? 1 : 0.3
       
        self.signalCount += 1
    }
    
}

