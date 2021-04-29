//
//  ViewController.swift
//  Piano7
//
//  Created by Jeyaram  T on 29/04/21.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        let pressedButton = sender.tag
        switch  pressedButton {
        case 0: play("a")
        case 1: play("b")
        case 2: play("c")
        case 3: play("d")
        case 4: play("e")
        case 5: play("f")
        case 6: play("g")
        default: break
        }
    }
    func play(_ fileName:String){
            guard let url = Bundle.main.url(forResource: fileName, withExtension: "wav") else{
                return
            }
            do{
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            }catch{
                print("No file found")
            }
        }
}

