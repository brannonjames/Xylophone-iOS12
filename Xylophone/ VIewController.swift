//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

  var audioPlayer: AVAudioPlayer!
  var player: AVAudioPlayer?
  

  override func viewDidLoad() {
      super.viewDidLoad()
  }

  let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

  @IBAction func notePressed(_ sender: UIButton) {
    var selectedSoundFile : String = soundArray[sender.tag - 1]

    playSound(file: selectedSoundFile)
  }
  
  func playSound(file: String) {
    let soundUrl = Bundle.main.url(forResource: file, withExtension: "wav")
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
    } catch {
      print(error)
    }
    
    audioPlayer.play()
  }
    
  

}

