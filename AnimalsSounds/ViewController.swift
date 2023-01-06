//
//  ViewController.swift
//  AnimalsSounds
//
//  Created by Debora Luiza on 06/01/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    
    @IBAction func playDog(_ sender: Any) {
        PlaySound(soundName: "cao")
    }
    
    @IBAction func playCat(_ sender: Any) {
        PlaySound(soundName: "gato")
    }
    
    @IBAction func playLion(_ sender: Any) {
        PlaySound(soundName: "leao")
    }
    
    @IBAction func playMonkey(_ sender: Any) {
        PlaySound(soundName: "macaco")
    }
    
    @IBAction func playSheep(_ sender: Any) {
        PlaySound(soundName: "ovelha")
    }
    
    @IBAction func playCown(_ sender: Any) {
        PlaySound(soundName: "vaca")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func PlaySound(soundName: String){
        if let path = Bundle.main.path(forResource: soundName, ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            
            do{
                player =  try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
                
            }catch{
                print("Erro ao executar o som")
            }
        }
    }


}

