//
//  ContentView.swift
//  VoiceRecoding
//
//  Created by Apple on 06/02/23.
//




import SwiftUI

struct RecordingView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                
                if audioRecorder.recording == false {
                    Button(action: {self.audioRecorder.startRecording()}) {
                        if #available(iOS 15.0, *) {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipped()
                                .foregroundColor(.red)
                                .padding(.bottom, 5)
                                .overlay{
                                    Text("Play/pause")
                                    .foregroundColor(.black)
                                    Text("")
                                }
                        }
                    }
                } else {
                    Button(action: {self.audioRecorder.stopRecording()}) {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                }
            }
            .navigationBarTitle("Voice Recorder")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView(audioRecorder: AudioRecorder())
    }
}
