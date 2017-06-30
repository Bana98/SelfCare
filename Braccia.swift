//
//  Braccia.swift
//  SelfCare
//
//  Created by Albana on 15/06/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Braccia: UIViewController {
    
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
    
    @IBAction func VideoBraccia1(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/braccia1.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"braccia1", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoBraccia2(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/braccia2.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"braccia2", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoBraccia3(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/braccia3.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"braccia3", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    
    @IBAction func VideoBraccia4(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/braccia4.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"braccia4", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoBraccia5(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/braccia5.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"braccia5", ofType: "mov")!)
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
