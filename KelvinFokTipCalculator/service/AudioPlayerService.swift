//
//  AudioPlayerService.swift
//  KelvinFokTipCalculator
//
//  Created by JeongminKim on 2023/04/27.
//

import Foundation
import AVFoundation

protocol AudioPlayerService {
    func playSound()
}

final class DefaultAudioPlayer: AudioPlayerService {
    
    private var player: AVAudioPlayer?
    
    func playSound() {
        let path = Bundle.main.path(forResource: "click", ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch(let error) {
            print(#file, error.localizedDescription)
        }
    }
}
