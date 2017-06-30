//
//  Gambe.swift
//  SelfCare
//
//  Created by Albana on 15/06/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Gambe: UIViewController {

    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func VideoGambe1(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/gambe1.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"gambe1", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }

    }

    
    @IBAction func VideoGambe2(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/gambe2.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"gambe2", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }

    
    @IBAction func VideoGambe3(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/gambe3.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"gambe3", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoGambe4(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/gambe4.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"gambe4", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoGambe5(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/gambe5.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"gambe5", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
