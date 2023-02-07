//
//  VoiceRecodingApp.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//

import SwiftUI

@main
struct VoiceRecodingApp: App {
    var body: some Scene {
        WindowGroup {
            RecordingView(audioRecorder: AudioRecorder())
//            DataPassingDemo()
//          .environmentObject(GlobalClass())
        }
    }
}
