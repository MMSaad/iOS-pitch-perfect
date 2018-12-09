//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/4/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit
import AVFoundation


class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    // MARK: Vars
    
    var state:RecordingState = .readyToRecord
    var audioRecorder:AVAudioRecorder!
    
    
    // MARK: Outlets
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    // MARK: UI Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        updateUi()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == SeguesNames.stopRecording){
            let controller = segue.destination as! PlaySoundsViewController
            let url = sender as! URL
            controller.recordedAudioURL = url
        }
    }
    
    
    // MARK: UI Actons
    
    @IBAction func startRecordButtonPressed(_ sender: Any) {
        let session = AVAudioSession.sharedInstance()
        session.requestRecordPermission { (granted) in
            DispatchQueue.main.async {
                if granted{
                    self.startRecording(session: session)
                }else{
                    DialogsHelpers().presentSimpleDialog(controller: self, title: Alerts.ErrorAccessingMicrophoneTitle, message: Alerts.ErrorAccessingMicrophoneMessage)
                }
            }
        }
    }
    
    func startRecording(session: AVAudioSession){
        toggleState()
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    
    @IBAction func stopRecordingButtonPressed(_ sender: Any) {
        toggleState()
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    
    // MARK: Helper Methods
    
    func toggleState(){
        state = state == .readyToRecord ? .recording : .readyToRecord
        updateUi()
    }
    
    func updateUi(){
        messageLabel.text = state == .readyToRecord ? Labels.tapToRecord  : Labels.recording
        startButton.isEnabled = state == .readyToRecord
        stopButton.isEnabled = state == .recording
    }
    
    
    
    // MARK: - Audio Recorder Delegate
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if(flag){
            performSegue(withIdentifier: SeguesNames.stopRecording, sender: recorder.url)
        }else{
        
            DialogsHelpers().presentSimpleDialog(controller: self, title: Alerts.RecordingFailedTitle, message: Alerts.RecordingFailedMessage)
        }
    }
    
    
    
}

