//
//  Camminata.swift
//  SelfCare
//
//  Created by Albana on 30/06/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit

class Camminata: UIViewController {

    @IBOutlet weak var GifView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GifView.loadGif(name: "camminata")  //non c'è bisogno dell'estensione, solo il nome del file
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
