//
//  Addominali.swift
//  SelfCare
//
//  Created by Albana on 15/06/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Addominali: UIViewController {

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
    

    @IBAction func VideoAbs1(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs1.mov" )
        
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs1", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoAbs2(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs2.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs2", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoAbs3(_ sender: Any) {
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs3.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs3", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
        
    }
    
    
    
    @IBAction func VideoAbs4(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs7.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs4", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoAbs5(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs5.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs5", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoAbs6(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs6.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs6", ofType: "mov")!)
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        self.present(playerViewController, animated : true){
            
            self.playerViewController.player?.play()
            
        }
    }
    
    
    @IBAction func VideoAbs7(_ sender: Any) {
        
        //var fileURL = NSURL(fileURLWithPath : "/Users/albana/Movies/Mac Video Library/abs4.mov" )
        let fileURL = NSURL(fileURLWithPath:  Bundle.main.path(forResource:"abs7", ofType: "mov")!)
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
