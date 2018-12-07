//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/4/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    var state:RecordingState = .readyToRecord
    
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        updateUi()
    }
    
    
    @IBAction func startRecordButtonPressed(_ sender: Any) {
        toggleState()
    }
    
    
    @IBAction func stopRecordingButtonPressed(_ sender: Any) {
        toggleState()
    }
    
    
    func toggleState(){
        state = state == .readyToRecord ? .recording : .readyToRecord
        updateUi()
    }
    
    func updateUi(){
        messageLabel.text = state == .readyToRecord ? "Tap to record" : "Recording, tap to stop"
        startButton.isEnabled = state == .readyToRecord
        stopButton.isEnabled = state == .recording
    }
    
}

