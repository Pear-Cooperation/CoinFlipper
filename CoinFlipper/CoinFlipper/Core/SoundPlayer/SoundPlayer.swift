//
//  SoundPlayer.swift
//  CoinFlipper
//
//  Created by Yaroslav Kukhar on 23.03.2024.
//

import Foundation
import AVFoundation

class SoundPlayer {
    
    // MARK: - Properties
    
    private var audioPlayer: AVAudioPlayer?
    
    // MARK: - Methods
    
    func playSound(sound: String, format: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: format) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
                print("Sound played, path: \(path)")
            } catch {
                print("Could not find or play file")
            }
        } else {
            print("Could not find or play file")
        }
    }
}

