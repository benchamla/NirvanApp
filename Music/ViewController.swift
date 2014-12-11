//
//  ViewController.swift
//  Music
//
//  Created by ben on 07/12/2014.
//  Copyright (c) 2014 Ben Chamla. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    var currentTime: Double  = 0
    @IBOutlet weak var volumeSlider: UISlider!
    var player:AVAudioPlayer =  AVAudioPlayer()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func playButtonPressed(sender: AnyObject) {
        var fileLocation =  NSString(string: NSBundle.mainBundle().pathForResource("nirvana", ofType: "mp3")!)
        
        
        
        var error:NSError? = nil
        player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
        player.currentTime = currentTime
        player.play()
    }

    @IBAction func stopButtonPressed(sender: AnyObject) {
        player.stop()
        currentTime = 0
    }
    
    @IBAction func changeVolumeSliderSlided(sender: AnyObject) {
        player.volume = volumeSlider.value
    }
    
    @IBAction func pause(sender: AnyObject) {
        currentTime = player.currentTime
        player.pause()
    }
    
}

