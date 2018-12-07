//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/7/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {

    var recordAudioUrl:URL!

    // MARK: Outlets
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recordAudioUrl)
    }
    

    // MARK: Actions
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play Sound Button Pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop Audio Button Pressed")
    }

}
