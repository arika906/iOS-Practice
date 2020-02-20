//
//  secondViewController.swift
//  AVFoundationAudio&VideoPlay
//
//  Created by Arika Afrin Boshra on 17/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import UIKit
import AVFoundation

class secondViewController: UIViewController {
    
    @IBOutlet weak var imageOnSecondViewController: UIImageView!
    
    @IBOutlet weak var LabelOnSecondViewController: UILabel!
    
    @IBAction func sliderForMusic(_ sender: UISlider) {
        
    }
    
    @IBOutlet weak var playBackSlider: UISlider!
    
    @IBOutlet weak var pauseBtn: UIButton!
    @IBAction func pauseAction(_ sender: Any) {
        
        if (player.isPlaying == true) {
            player.pause()
            pauseBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
        } else {
            player.play()
            pauseBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }
    }
    
    @IBOutlet weak var stopBtn: UIButton!
    @IBAction func stopAction(_ sender: Any) {
        player.stop()
    }
    
    @IBOutlet weak var timeLbl: UILabel!
    
    @IBAction func Back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    var player = AVAudioPlayer()
    var playerItem:AVPlayerItem?
    var timer: Timer?
    
    var name = ""
    var musicPlaying = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LabelOnSecondViewController.text = name
        imageOnSecondViewController.image = UIImage(named: name)
        
        playMusic()
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer?.invalidate()
    }
    
}
extension secondViewController{
    
    func playMusic(){
        
        let path = Bundle.main.path(forResource: musicPlaying, ofType : "mp3")!
        let url = URL(fileURLWithPath : path)
        let audioAsset = AVURLAsset.init(url: url, options: nil)
        let duration = audioAsset.duration
        let durationInSeconds = CMTimeGetSeconds(duration)
        
        playBackSlider.minimumValue = 0
        playBackSlider.maximumValue = Float(durationInSeconds)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            playBackSlider.isContinuous = true
            player.play()
            timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(self.updateSlider), userInfo: nil, repeats: true)
            
        }
        catch {
            print ("There is an issue with this code!")
        }
    }
    
    @objc func updateSlider() {
        self.playBackSlider.setValue( Float(player.currentTime), animated: true)
        //timerAction()
        let minutes = Int(playBackSlider.value) / 60 % 60
        let seconds = Int(playBackSlider.value) % 60
        self.timeLbl.text = "\(String(format:"%02i:%02i", minutes, seconds))"
    }
    
    //    func timerAction(){
    //        let Range =  playBackSlider.maximumValue - playBackSlider.minimumValue;
    //        let Increment = Range/100;
    //        let newval = playBackSlider.value + Increment;
    //        if(Increment <= playBackSlider.maximumValue)
    //        {
    //            playBackSlider.setValue(newval, animated: true)
    //            print("The value of the slider is now \(playBackSlider.value)")
    //            //sliderValue = Int(playBackSlider.value)
    //        }
    //        else if (Increment >= playBackSlider.minimumValue)
    //        {
    //            playBackSlider.setValue(newval, animated: true)
    //        }
    //    }
    
}
