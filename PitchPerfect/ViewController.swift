//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/4/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.stopButton.isEnabled = false
    }
    
    
    @IBAction func startRecordButtonPressed(_ sender: Any) {
    }
    
    
    @IBAction func stopRecordingButtonPressed(_ sender: Any) {
    }
    
}

