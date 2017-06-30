//
//  Profilo.swift
//  SelfCare
//
//  Created by Albana on 17/04/17.
//  Copyright © 2017 Albana. All rights reserved.
//

import UIKit

class Profilo: UIViewController {

    @IBOutlet weak var nomeUtente: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let fileName = "login"
        let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        print("FilePath: \(fileURL.path)")
        
        var readString = "" // Used to store the file contents
        do
        {
            readString = try String(contentsOf: fileURL)
            nomeUtente.text = readString;
        }catch _ as NSError {
            
        }
        
        
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
