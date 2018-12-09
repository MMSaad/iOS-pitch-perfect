//
//  Constants.swift
//  PitchPerfect
//
//  Created by Mustafa Muhammad on 12/9/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import Foundation

// MARK: Recording sounds Alerts

struct Alerts {
    static let DismissAlert = "Dismiss"
    static let RecordingDisabledTitle = "Recording Disabled"
    static let RecordingDisabledMessage = "You've disabled this app from recording your microphone. Check Settings."
    static let RecordingFailedTitle = "Recording Failed"
    static let RecordingFailedMessage = "Something went wrong with your recording."
    static let AudioRecorderError = "Audio Recorder Error"
    static let AudioSessionError = "Audio Session Error"
    static let AudioRecordingError = "Audio Recording Error"
    static let AudioFileError = "Audio File Error"
    static let AudioEngineError = "Audio Engine Error"
    static let ErrorAccessingMicrophoneTitle = "Error Accessing Microphone"
    static let ErrorAccessingMicrophoneMessage = "Please grant Pitch Perfect access to your microphone to be able to record sounds"
}

struct SeguesNames{
    static let stopRecording = "stopRecording"
}

struct Labels{
    static let tapToRecord = "Tap to record"
    static let recording = "Recording, tap to stop"
}


