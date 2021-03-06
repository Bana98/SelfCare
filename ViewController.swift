//
//  ViewController.swift
//  SelfCare
//
//  Created by Albana on 13/03/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(_ _animated: Bool)
    {
        
        let isUserLoggedIn = UserDefaults.standard.bool(forKey : "isUserLoggedIn");
        
        if(!isUserLoggedIn)
        {
            self.performSegue(withIdentifier: "loginView", sender: self);
        }
        
        
    }
}

